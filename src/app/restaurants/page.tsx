import RestaurantsList from "@/views/RestaurantsList";
import { places } from "@/lib/data";

export default function RestaurantsPage() {
    const restaurants = places.filter(place => place.type === 'Restaurant');
    return <RestaurantsList restaurants={restaurants} />;
}
