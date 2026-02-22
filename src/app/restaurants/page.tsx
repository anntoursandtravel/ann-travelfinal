import RestaurantsList from "@/views/RestaurantsList";
import { getPlaces } from "@/lib/api";

export default async function RestaurantsPage() {
    const places = await getPlaces();
    const restaurants = places.filter(place => place.type === 'Restaurant');
    return <RestaurantsList restaurants={restaurants} />;
}
