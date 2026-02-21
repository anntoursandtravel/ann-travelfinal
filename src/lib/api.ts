import { createClient } from './supabase/public'
import { Place } from './types'
import { Itinerary, itineraries as staticItineraries } from './itineraries'
import { places as staticPlaces } from './data'

const isSupabaseConfigured = !!process.env.NEXT_PUBLIC_SUPABASE_URL && !!process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

export async function getPlaces(): Promise<Place[]> {
  if (!isSupabaseConfigured) {
    return staticPlaces
  }

  const supabase = createClient()
  const { data, error } = await supabase.from('places').select('*')

  if (error || !data) return staticPlaces

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
  if (!isSupabaseConfigured) {
    return staticItineraries
  }

  const supabase = createClient()
  const { data, error } = await supabase.from('itineraries').select('*')

  if (error || !data) return staticItineraries

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
  if (!isSupabaseConfigured) {
    return [
      { name: 'Uganda', image: 'https://images.unsplash.com/photo-1511210352317-062e10741634' },
      { name: 'Kenya', image: 'https://images.unsplash.com/photo-1516426122078-c23e76319801' },
      { name: 'Tanzania', image: 'https://images.unsplash.com/photo-1516026672322-bc52d61a55d5' },
      { name: 'Zanzibar', image: 'https://images.unsplash.com/photo-1586861635167-e5223aadc9fe' },
      { name: 'Rwanda', image: 'https://images.unsplash.com/photo-1547407139-3c921a66005c' }
    ]
  }

  const supabase = createClient()
  const { data } = await supabase.from('destinations').select('*')
  return data || []
}
