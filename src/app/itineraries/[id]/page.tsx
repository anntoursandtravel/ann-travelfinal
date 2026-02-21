import { notFound } from "next/navigation";
import { itineraries as staticItineraries, type Itinerary } from "@/lib/itineraries";
import ItineraryDetails from "@/views/ItineraryDetails";
import type { Metadata } from "next";
import { supabase } from "@/lib/supabase/client";

interface Props {
  params: Promise<{ id: string }>;
}

async function getItinerary(id: string): Promise<Itinerary | undefined> {
  if (supabase) {
    try {
      const { data, error } = await supabase
        .from('itineraries')
        .select('*')
        .eq('id', id)
        .single();

      if (data && !error) {
        return data as Itinerary;
      }
      if (error) {
        console.warn('Supabase fetch error for itinerary:', error.message);
      }
    } catch (e) {
      console.warn('Supabase client error:', e);
    }
  }

  // Fallback to static data
  return staticItineraries.find((it) => it.id === id);
}

async function getAllItineraries(): Promise<Itinerary[]> {
  if (supabase) {
    try {
      const { data, error } = await supabase
        .from('itineraries')
        .select('*');

      if (data && !error) {
        return data as Itinerary[];
      }
      if (error) {
        console.warn('Supabase fetch error for all itineraries:', error.message);
      }
    } catch (e) {
      console.warn('Supabase client error:', e);
    }
  }
  return staticItineraries;
}

export async function generateStaticParams() {
  const itineraries = await getAllItineraries();
  return itineraries.map((itinerary) => ({
    id: itinerary.id,
  }));
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { id } = await params;
  const itinerary = await getItinerary(id);

  if (!itinerary) return { title: "Itinerary Not Found" };

  return {
    title: `${itinerary.title} | Nile Crown Safaris`,
    description: itinerary.description,
    openGraph: {
      title: itinerary.title,
      description: itinerary.description,
      images: [itinerary.image],
    },
  };
}

export default async function ItineraryDetailsPage({ params }: Props) {
  const { id } = await params;
  const itinerary = await getItinerary(id);

  if (!itinerary) {
    notFound();
  }

  return <ItineraryDetails itinerary={itinerary} />;
}
