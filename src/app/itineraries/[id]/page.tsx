import { notFound } from "next/navigation";
import ItineraryDetails from "@/views/ItineraryDetails";
import type { Metadata } from "next";
import { getItineraries, getItineraryById } from "@/lib/api";

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
  const itinerary = await getItineraryById(id);

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
  const itinerary = await getItineraryById(id);

  if (!itinerary) {
    notFound();
  }

  return <ItineraryDetails itinerary={itinerary} />;
}
