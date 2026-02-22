import HotelsList from "@/views/HotelsList";
import { getPlaces } from "@/lib/api";

export default async function HotelsPage() {
    const places = await getPlaces();
    const hotels = places.filter(place => place.type === 'Hotel');
    return <HotelsList hotels={hotels} />;
}
