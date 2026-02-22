'use server'

import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { revalidatePath } from 'next/cache'

async function createClient() {
  const cookieStore = await cookies()

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

  if (!supabaseUrl || !supabaseAnonKey) {
    throw new Error('Supabase environment variables are missing. Please check your .env file.')
  }

  return createServerClient(
    supabaseUrl,
    supabaseAnonKey,
    {
      cookies: {
        getAll() {
          return cookieStore.getAll()
        },
        setAll(cookiesToSet) {
          try {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            )
          } catch {
            // The `setAll` method was called from a Server Component.
          }
        },
      },
    }
  )
}

// --- Analytics ---

export async function getDashboardStats() {
  try {
    const supabase = await createClient()

    const results = await Promise.allSettled([
      supabase.from('places').select('*', { count: 'exact', head: true }),
      supabase.from('reviews').select('*', { count: 'exact', head: true }),
      supabase.from('profiles').select('*', { count: 'exact', head: true }),
      supabase.from('itineraries').select('*', { count: 'exact', head: true }),
      supabase.from('inquiries').select('*', { count: 'exact', head: true })
    ])

    const counts = results.map(result => {
      if (result.status === 'fulfilled' && result.value.count !== null) {
        return result.value.count
      }
      return 0
    })

    return {
      placesCount: counts[0] || 0,
      reviewsCount: counts[1] || 0,
      usersCount: counts[2] || 0,
      itinerariesCount: counts[3] || 0,
      inquiriesCount: counts[4] || 0,
    }
  } catch (error) {
    console.error('Error in getDashboardStats:', error)
    return {
      placesCount: 0,
      reviewsCount: 0,
      usersCount: 0,
      itinerariesCount: 0,
      inquiriesCount: 0,
    }
  }
}

export async function getAnalyticsData() {
  try {
    const supabase = await createClient()

    const thirtyDaysAgo = new Date()
    thirtyDaysAgo.setDate(thirtyDaysAgo.getDate() - 30)

    const { data: reviewsData } = await supabase
      .from('reviews')
      .select('created_at')
      .gte('created_at', thirtyDaysAgo.toISOString())
      .order('created_at', { ascending: true })

    const reviewsByDay = reviewsData?.reduce((acc: any, review: any) => {
      const date = new Date(review.created_at).toLocaleDateString('en-US', { month: 'short', day: 'numeric' })
      acc[date] = (acc[date] || 0) + 1
      return acc
    }, {})

    const reviewsChartData = Object.entries(reviewsByDay || {}).map(([date, count]) => ({
      name: date,
      reviews: count as number
    }))

    const { data: usersData } = await supabase
      .from('profiles')
      .select('created_at')
      .gte('created_at', thirtyDaysAgo.toISOString())
      .order('created_at', { ascending: true })

    const usersByDay = usersData?.reduce((acc: any, user: any) => {
      const date = new Date(user.created_at).toLocaleDateString('en-US', { month: 'short', day: 'numeric' })
      acc[date] = (acc[date] || 0) + 1
      return acc
    }, {})

    const usersChartData = Object.entries(usersByDay || {}).map(([date, count]) => ({
      name: date,
      users: count as number
    }))

    return {
      reviewsChartData,
      usersChartData
    }
  } catch (error) {
    console.error('Error in getAnalyticsData:', error)
    return {
      reviewsChartData: [],
      usersChartData: []
    }
  }
}

export async function getPopularPlaces() {
  try {
    const supabase = await createClient()
    const { data } = await supabase
        .from('places')
        .select('id, name, rating')
        .order('rating', { ascending: false })
        .limit(5)

    return data || []
  } catch (error) {
    console.error('Error fetching popular places:', error)
    return []
  }
}

// --- Inquiries ---

export async function submitInquiry(formData: FormData) {
  try {
    const supabase = await createClient()

    const name = formData.get('name') as string
    const email = formData.get('email') as string
    const subject = formData.get('subject') as string
    const message = formData.get('message') as string

    if (!name || !email || !message) {
      return { error: 'Missing required fields' }
    }

    const { error } = await supabase.from('inquiries').insert({
      name,
      email,
      subject,
      message,
      status: 'unread'
    })

    if (error) {
      console.error('Error submitting inquiry:', error)
      return { error: 'Failed to submit inquiry' }
    }

    return { success: true }
  } catch (error) {
    console.error('Error in submitInquiry:', error)
    return { error: 'An unexpected error occurred' }
  }
}

export async function getInquiries() {
  try {
    const supabase = await createClient()

    const { data, error } = await supabase
      .from('inquiries')
      .select('*')
      .order('created_at', { ascending: false })

    if (error) {
        console.error('Error fetching inquiries:', error)
        return []
    }

    return data
  } catch (error) {
    console.error('Error in getInquiries:', error)
    return []
  }
}

export async function deleteInquiry(id: string) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('inquiries').delete().eq('id', id)

    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to delete inquiry' }
  }
}

export async function markInquiryAsRead(id: string) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('inquiries').update({ status: 'read' }).eq('id', id)

    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to mark as read' }
  }
}

// --- Places Management ---

export async function getPlaces() {
  try {
    const supabase = await createClient()
    const { data, error } = await supabase.from('places').select('*').order('created_at', { ascending: false })
    if (error) return []
    return data
  } catch (error) {
    console.error('Error fetching places:', error)
    return []
  }
}

export async function createPlace(placeData: any) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('places').insert(placeData)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to create place' }
  }
}

export async function updatePlace(id: string, placeData: any) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('places').update(placeData).eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to update place' }
  }
}

export async function deletePlace(id: string) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('places').delete().eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to delete place' }
  }
}

// --- Itineraries Management ---

export async function getItineraries() {
  try {
    const supabase = await createClient()
    const { data, error } = await supabase.from('itineraries').select('*').order('created_at', { ascending: false })
    if (error) return []
    return data
  } catch (error) {
    console.error('Error fetching itineraries:', error)
    return []
  }
}

export async function createItinerary(data: any) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('itineraries').insert(data)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to create itinerary' }
  }
}

export async function updateItinerary(id: string, data: any) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('itineraries').update(data).eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to update itinerary' }
  }
}

export async function deleteItinerary(id: string) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('itineraries').delete().eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to delete itinerary' }
  }
}

// --- Reviews Management ---

export async function getAllReviews() {
  try {
    const supabase = await createClient()
    const { data, error } = await supabase
        .from('reviews')
        .select(`
            id,
            rating,
            comment,
            created_at,
            user_id,
            place:places(name),
            user:profiles(full_name, email)
        `)
        .order('created_at', { ascending: false })

    if (error) return []

    return data.map((review: any) => ({
        id: review.id,
        rating: review.rating,
        comment: review.comment,
        date: review.created_at,
        placeName: review.place?.name || 'Unknown Place',
        userName: review.user?.full_name || 'Anonymous',
        userEmail: review.user?.email || 'N/A'
    }))
  } catch (error) {
    console.error('Error fetching reviews:', error)
    return []
  }
}

export async function deleteReview(id: string) {
  try {
    const supabase = await createClient()
    const { error } = await supabase.from('reviews').delete().eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
  } catch (error) {
    return { error: 'Failed to delete review' }
  }
}

// --- Users Management ---

export async function getUsers() {
  try {
    const supabase = await createClient()
    const { data, error } = await supabase.from('profiles').select('*').order('created_at', { ascending: false })
    if (error) return []
    return data
  } catch (error) {
    console.error('Error fetching users:', error)
    return []
  }
}
