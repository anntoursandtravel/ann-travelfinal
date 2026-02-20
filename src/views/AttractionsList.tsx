"use client"
import { useEffect, useState } from "react";
import { places } from "@/lib/data";
import type { Place } from "@/lib/types";
import { PlaceCard } from "@/components/place-card";
import { AttractionsListLoader } from "@/components/loaders";
export default function AttractionsList() {
    const [attractions, setAttractions] = useState<Place[]>([]);
    const [isLoading, setIsLoading] = useState(true);
    useEffect(() => {
        setIsLoading(true);
        const allAttractions = places.filter(place => place.type === 'Attraction');
        setAttractions(allAttractions);
        setIsLoading(false);
    }, [])
    return ( 
       <div className="bg-background">
            <div className="container mx-auto text-center my-10">
                <h1 className="font-headline text-3xl md:text-4xl font-bold">
                    Attractions and Things to Do
                </h1>
            </div>
            <main className="container mx-auto px-4 pb-16">
                { isLoading ? (
                    <AttractionsListLoader count={12} />
                ) : (
                    <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 md:gap-6">
                        {attractions.map((attraction) => (
                            <PlaceCard key={attraction.id} place={attraction} />
                        ))}
                    </div>
                ) }
            </main>
       </div>
     );
}
