import AttractionsList from "@/views/AttractionsList";
import { getPlaces } from "@/lib/api";

export default async function AttractionsPage() {
  const allPlaces = await getPlaces();
  const attractions = allPlaces.filter(p => p.type === 'Attraction');
  return <AttractionsList attractions={attractions} />;
}
