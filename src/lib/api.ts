import { createClient } from './supabase/server'
import { Place } from './types'
import { Itinerary } from './itineraries'

export async function getPlaces(): Promise<Place[]> {
  const supabase = await createClient()
  const { data, error } = await supabase.from('places').select('*')

  if (error || !data) return []

  return data.map(p => ({
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
  }))
}

export async function getItineraries(): Promise<Itinerary[]> {
  const supabase = await createClient()
  const { data, error } = await supabase.from('itineraries').select('*')

  if (error || !data) return []

  return data.map(i => ({
    id: i.id,
    title: i.title,
    countries: i.countries,
    duration: i.duration,
    description: i.description,
    image: i.image,
    dailyBreakdown: i.daily_breakdown
  }))
}

export async function getDestinations() {
  const supabase = await createClient()
  const { data } = await supabase.from('destinations').select('*')
  return data || []
}
