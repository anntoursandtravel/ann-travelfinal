import HotelsList from "@/views/HotelsList";
import { getPlaces } from "@/lib/api";

export default async function HotelsPage() {
  const allPlaces = await getPlaces();
  const hotels = allPlaces.filter(p => p.type === 'Hotel');
  return <HotelsList hotels={hotels} />;
}
