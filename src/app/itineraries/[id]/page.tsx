import { notFound } from "next/navigation";
import { getItineraries } from "@/lib/api";
import ItineraryDetails from "@/views/ItineraryDetails";
import type { Metadata } from "next";

interface Props {
  params: Promise<{ id: string }>;
}

export async function generateStaticParams() {
  const itineraries = await getItineraries();
  return itineraries.map((itinerary) => ({
    id: itinerary.id,
  }));
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { id } = await params;
  const itineraries = await getItineraries();
  const itinerary = itineraries.find((it) => it.id === id);

  if (!itinerary) return { title: "Itinerary Not Found" };

  return {
    title: `${itinerary.title} | Ann Tours and Travel`,
    description: itinerary.description,
    openGraph: {
      title: itinerary.title,
      description: itinerary.description,
      images: [itinerary.image],
    },
  };
}

export default async function ItineraryPage({ params }: Props) {
  const { id } = await params;
  const itineraries = await getItineraries();
  const itinerary = itineraries.find((it) => it.id === id);

  if (!itinerary) {
    notFound();
  }

  return <ItineraryDetails itinerary={itinerary} />;
}
