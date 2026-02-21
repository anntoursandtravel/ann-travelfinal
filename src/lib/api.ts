import { createClient } from './supabase/public'
import { Place } from './types'
import { Itinerary } from './itineraries'

export async function getPlaces(): Promise<Place[]> {
  const supabase = createClient()
  const { data, error } = await supabase.from('places').select('*')

  if (error || !data) return []

  return data.map(p => ({
    id: p.id,
    name: p.name,
    country: p.country as any,
    type: p.type as any,
    description: p.description || '',
    longDescription: p.long_description || '',
    images: p.image ? [p.image] : [],
    location: p.coordinates || { lat: 0, lng: 0 },
    contact: { phone: '', website: '' },
    priceRange: p.price_range,
    rating: p.rating
  }))
}

export async function getItineraries(): Promise<Itinerary[]> {
  const supabase = createClient()
  const { data, error } = await supabase.from('itineraries').select('*')

  if (error || !data) return []

  return data.map(i => ({
    id: i.id,
    title: i.title,
    countries: i.countries as any,
    duration: i.duration,
    description: i.description || '',
    image: i.image || '',
    dailyBreakdown: i.daily_breakdown
  }))
}

export async function getDestinations() {
  const supabase = createClient()
  const { data } = await supabase.from('destinations').select('*')
  return data || []
}
