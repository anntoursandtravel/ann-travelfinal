import { createClient } from '@supabase/supabase-js'
import { Place } from './types'
import { Itinerary, itineraries as staticItineraries } from './itineraries'
import { places as staticPlaces } from './data'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

export const supabase = (supabaseUrl && supabaseAnonKey)
  ? createClient(supabaseUrl, supabaseAnonKey)
  : null

export async function getPlaces(): Promise<Place[]> {
  if (!supabase) return staticPlaces

  try {
    const { data, error } = await supabase
      .from('places')
      .select('*')
      .order('created_at', { ascending: false })

    if (error || !data) {
      console.warn('Error fetching places from Supabase, falling back to static data:', error)
      return staticPlaces
    }

    // Transform data if necessary to match Place interface
    // Assuming the DB schema matches the Place interface exactly for now
    // If not, map fields here:
    return data.map((item: any) => ({
        ...item,
        // Ensure location is an object if stored as jsonb or separate columns
        location: typeof item.location === 'string' ? JSON.parse(item.location) : item.location,
        contact: typeof item.contact === 'string' ? JSON.parse(item.contact) : item.contact,
        images: Array.isArray(item.images) ? item.images : (item.images ? item.images.split(',') : [])
    })) as Place[]
  } catch (e) {
    console.error('Unexpected error fetching places:', e)
    return staticPlaces
  }
}

export async function getPlaceById(id: string): Promise<Place | undefined> {
    const allPlaces = await getPlaces()
    return allPlaces.find(p => p.id === id)
}

export async function getItineraries(): Promise<Itinerary[]> {
  if (!supabase) return staticItineraries

  try {
    const { data, error } = await supabase
      .from('itineraries')
      .select('*')
      .order('created_at', { ascending: false })

    if (error || !data) {
      console.warn('Error fetching itineraries from Supabase, falling back to static data:', error)
      return staticItineraries
    }

    return data.map((item: any) => ({
        ...item,
        countries: Array.isArray(item.countries) ? item.countries : (item.countries ? item.countries.split(',') : []),
        dailyBreakdown: typeof item.dailyBreakdown === 'string' ? JSON.parse(item.dailyBreakdown) : item.dailyBreakdown
    })) as Itinerary[]
  } catch (e) {
    console.error('Unexpected error fetching itineraries:', e)
    return staticItineraries
  }
}

export async function getItineraryById(id: string): Promise<Itinerary | undefined> {
    const allItineraries = await getItineraries()
    return allItineraries.find(i => i.id === id)
}
