import ItinerariesList from "@/views/ItinerariesList";
import { getItineraries } from "@/lib/api";

export default async function ItinerariesPage() {
  const itineraries = await getItineraries();
  return <ItinerariesList itineraries={itineraries} />;
}
