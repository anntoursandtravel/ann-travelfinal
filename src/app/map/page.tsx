import MapView from "@/views/MapView";
import { getPlaces } from "@/lib/api";

export default async function MapPage() {
  const allPlaces = await getPlaces();
  return <MapView places={allPlaces} />;
}
