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

export async function submitReview(formData: FormData) {
  const supabase = await createClient()

  const {
    data: { user },
  } = await supabase.auth.getUser()

  if (!user) {
    return { error: 'Not authenticated' }
  }

  const placeId = formData.get('placeId') as string
  const rating = parseInt(formData.get('rating') as string)
  const comment = formData.get('comment') as string

  if (!placeId || !rating || !comment) {
      return { error: 'Missing fields' }
  }

  const { error } = await supabase.from('reviews').insert({
    place_id: placeId,
    user_id: user.id,
    rating,
    comment,
  })

  if (error) {
    console.error('Error submitting review:', error)
    return { error: error.message }
  }

  revalidatePath(`/place/${placeId}`)
  return { success: true }
}

export async function toggleSavePlace(placeId: string) {
  const supabase = await createClient()

  const {
    data: { user },
  } = await supabase.auth.getUser()

  if (!user) {
    return { error: 'Not authenticated' }
  }

  // Check if already saved
  const { data: existing, error: fetchError } = await supabase
    .from('saved_places')
    .select('id')
    .eq('place_id', placeId)
    .eq('user_id', user.id)
    .maybeSingle()

  if (fetchError) {
      console.error('Error checking saved status:', fetchError)
      return { error: fetchError.message }
  }

  if (existing) {
    const { error } = await supabase
      .from('saved_places')
      .delete()
      .eq('id', existing.id)

    if (error) return { error: error.message }

    revalidatePath('/trips')
    return { saved: false }
  } else {
    const { error } = await supabase
      .from('saved_places')
      .insert({
        place_id: placeId,
        user_id: user.id,
      })

    if (error) return { error: error.message }

    revalidatePath('/trips')
    return { saved: true }
  }
}

export async function getSavedPlaces() {
    const supabase = await createClient()
    const { data: { user } } = await supabase.auth.getUser()

    if (!user) return []

    const { data, error } = await supabase
        .from('saved_places')
        .select(`
            place:places(*)
        `)
        .eq('user_id', user.id)

    if (error) {
        console.error('Error fetching saved places:', error)
        return []
    }

    // Map to Place type structure
    return data.map((item: any) => {
        const p = item.place;
        return {
            ...p,
            location: {
                lat: p.location_lat,
                lng: p.location_lng
            },
            longDescription: p.long_description
        };
    }) || []
}
