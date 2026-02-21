import AttractionsList from "@/views/AttractionsList";
import { places } from "@/lib/data";

export default function AttractionsPage() {
    const attractions = places.filter(place => place.type === 'Attraction');
    return <AttractionsList attractions={attractions} />;
}
