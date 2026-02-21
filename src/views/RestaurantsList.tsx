"use client"
import type { Place } from "@/lib/types";
import { PlaceCard } from "@/components/place-card";
export default function RestaurantsList({ restaurants }: { restaurants: Place[] }) {
    return ( 
       <div className="bg-background">
            <div className="container mx-auto text-center my-10">
                <h1 className="font-headline text-3xl md:text-4xl font-bold">
                    Restaurants and Places to Eat
                </h1>
            </div>
            <main className="container mx-auto px-4 pb-16">
                <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 md:gap-6">
                    {restaurants.map((restaurant) => (
                        <PlaceCard key={restaurant.id} place={restaurant} />
                    ))}
                </div>
            </main>
       </div>
     );
}
