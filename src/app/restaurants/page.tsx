import RestaurantsList from "@/views/RestaurantsList";
import { getPlaces } from "@/lib/api";

export default async function RestaurantsPage() {
  const allPlaces = await getPlaces();
  const restaurants = allPlaces.filter(p => p.type === 'Restaurant');
  return <RestaurantsList restaurants={restaurants} />;
}
