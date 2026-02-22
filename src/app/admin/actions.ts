'use server'

import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { revalidatePath } from 'next/cache'

async function createClient() {
  const cookieStore = await cookies()

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
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
  const supabase = await createClient()

  const [
    { count: placesCount },
    { count: reviewsCount },
    { count: usersCount },
    { count: itinerariesCount },
    { count: inquiriesCount }
  ] = await Promise.all([
    supabase.from('places').select('*', { count: 'exact', head: true }),
    supabase.from('reviews').select('*', { count: 'exact', head: true }),
    supabase.from('profiles').select('*', { count: 'exact', head: true }), // Assuming profiles table for users
    supabase.from('itineraries').select('*', { count: 'exact', head: true }),
    supabase.from('inquiries').select('*', { count: 'exact', head: true })
  ])

  return {
    placesCount: placesCount || 0,
    reviewsCount: reviewsCount || 0,
    usersCount: usersCount || 0,
    itinerariesCount: itinerariesCount || 0,
    inquiriesCount: inquiriesCount || 0,
  }
}

export async function getAnalyticsData() {
  const supabase = await createClient()

  // 1. Reviews over time (last 30 days)
  const thirtyDaysAgo = new Date()
  thirtyDaysAgo.setDate(thirtyDaysAgo.getDate() - 30)

  const { data: reviewsData } = await supabase
    .from('reviews')
    .select('created_at')
    .gte('created_at', thirtyDaysAgo.toISOString())
    .order('created_at', { ascending: true })

  // Aggregate reviews by day
  const reviewsByDay = reviewsData?.reduce((acc: any, review: any) => {
    const date = new Date(review.created_at).toLocaleDateString('en-US', { month: 'short', day: 'numeric' })
    acc[date] = (acc[date] || 0) + 1
    return acc
  }, {})

  const reviewsChartData = Object.entries(reviewsByDay || {}).map(([date, count]) => ({
    name: date,
    reviews: count as number
  }))

  // 2. User Signups over time (last 30 days)
  const { data: usersData } = await supabase
    .from('profiles')
    .select('created_at') // Assuming created_at exists in profiles
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
}

export async function getPopularPlaces() {
    const supabase = await createClient()

    // Fetch places with their average rating and review count
    // Note: This might be complex in a single query without aggregations on the DB side.
    // For now, we'll fetch places and sort by rating manually or use a view if available.
    // Assuming simple fetch for now.
    const { data } = await supabase
        .from('places')
        .select('id, name, rating')
        .order('rating', { ascending: false })
        .limit(5)

    return data || []
}

// --- Inquiries ---

export async function submitInquiry(formData: FormData) {
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
    status: 'unread' // Default status
  })

  if (error) {
    console.error('Error submitting inquiry:', error)
    return { error: 'Failed to submit inquiry' }
  }

  return { success: true }
}

export async function getInquiries() {
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
}

export async function deleteInquiry(id: string) {
    const supabase = await createClient()
    const { error } = await supabase.from('inquiries').delete().eq('id', id)

    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

export async function markInquiryAsRead(id: string) {
    const supabase = await createClient()
    const { error } = await supabase.from('inquiries').update({ status: 'read' }).eq('id', id)

    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

// --- Places Management ---

export async function getPlaces() {
  const supabase = await createClient()
  const { data, error } = await supabase.from('places').select('*').order('created_at', { ascending: false })
  if (error) return []
  return data
}

export async function createPlace(placeData: any) {
    const supabase = await createClient()
    const { error } = await supabase.from('places').insert(placeData)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

export async function updatePlace(id: string, placeData: any) {
    const supabase = await createClient()
    const { error } = await supabase.from('places').update(placeData).eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

export async function deletePlace(id: string) {
    const supabase = await createClient()
    const { error } = await supabase.from('places').delete().eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

// --- Itineraries Management ---

export async function getItineraries() {
    const supabase = await createClient()
    const { data, error } = await supabase.from('itineraries').select('*').order('created_at', { ascending: false })
    if (error) return []
    return data
}

export async function createItinerary(data: any) {
    const supabase = await createClient()
    const { error } = await supabase.from('itineraries').insert(data)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

export async function updateItinerary(id: string, data: any) {
    const supabase = await createClient()
    const { error } = await supabase.from('itineraries').update(data).eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

export async function deleteItinerary(id: string) {
    const supabase = await createClient()
    const { error } = await supabase.from('itineraries').delete().eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

// --- Reviews Management ---

export async function getAllReviews() {
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
}

export async function deleteReview(id: string) {
    const supabase = await createClient()
    const { error } = await supabase.from('reviews').delete().eq('id', id)
    if (error) return { error: error.message }
    revalidatePath('/admin')
    return { success: true }
}

// --- Users Management ---

export async function getUsers() {
    const supabase = await createClient()
    const { data, error } = await supabase.from('profiles').select('*').order('created_at', { ascending: false })
    if (error) return []
    return data
}
