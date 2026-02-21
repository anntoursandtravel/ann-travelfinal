import HotelsList from "@/views/HotelsList";
import { places } from "@/lib/data";

export default function HotelsPage() {
    const hotels = places.filter(place => place.type === 'Hotel');
    return <HotelsList hotels={hotels} />;
}
