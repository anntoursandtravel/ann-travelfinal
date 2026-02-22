'use server'

import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'

async function createClient() {
  const cookieStore = await cookies()

  if (!process.env.NEXT_PUBLIC_SUPABASE_URL || !process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY) {
    console.error('Missing Supabase environment variables')
    throw new Error('Missing Supabase environment variables')
  }

  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
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

export async function getAdminStats() {
  try {
    const supabase = await createClient()

    const { count: placesCount, error: placesError } = await supabase
      .from('places')
      .select('*', { count: 'exact', head: true })

    const { count: reviewsCount, error: reviewsError } = await supabase
      .from('reviews')
      .select('*', { count: 'exact', head: true })

    if (placesError || reviewsError) {
      console.error('Error fetching admin stats:', placesError || reviewsError)
      return { placesCount: 0, reviewsCount: 0 }
    }

    return {
      placesCount: placesCount || 0,
      reviewsCount: reviewsCount || 0,
    }
  } catch (error) {
    console.error('Error in getAdminStats:', error)
    return { placesCount: 0, reviewsCount: 0 }
  }
}

export async function getRecentReviews() {
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
        place:places(name)
      `)
      .order('created_at', { ascending: false })
      .limit(5)

    if (error) {
      console.error('Error fetching recent reviews:', error)
      return []
    }

    if (!data) return []

    return data.map((review: any) => ({
      id: review.id,
      rating: review.rating,
      comment: review.comment,
      date: review.created_at,
      placeName: review.place?.name || 'Unknown Place',
      userId: review.user_id
    }))
  } catch (error) {
    console.error('Error in getRecentReviews:', error)
    return []
  }
}
