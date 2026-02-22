import AttractionsList from "@/views/AttractionsList";
import { getPlaces } from "@/lib/api";

export default async function AttractionsPage() {
    const places = await getPlaces();
    const attractions = places.filter(place => place.type === 'Attraction');
    return <AttractionsList attractions={attractions} />;
}
