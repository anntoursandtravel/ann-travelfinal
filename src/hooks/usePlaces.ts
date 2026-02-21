import { useState, useEffect } from 'react'
import { createClient } from '@/lib/supabase/client'
import { Place } from '@/lib/types'

export function usePlaces() {
  const [places, setPlaces] = useState<Place[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    async function fetchPlaces() {
      const supabase = createClient()
      const { data, error } = await supabase.from('places').select('*')

      if (!error && data) {
        setPlaces(data.map(p => ({
          id: p.id,
          name: p.name,
          country: p.country,
          type: p.type,
          description: p.description,
          longDescription: p.long_description,
          images: p.images,
          location: { lat: p.location_lat, lng: p.location_lng },
          contact: { phone: p.phone, website: p.website },
          rating: p.rating
        })))
      }
      setLoading(false)
    }

    fetchPlaces()
  }, [])

  return { places, loading }
}
