"use client"
import type { Place } from "@/lib/types";
import { PlaceCard } from "@/components/place-card";
import { AttractionsListLoader } from "@/components/loaders";
import { Button } from "@/components/ui/button";
import { MapPin } from "lucide-react";
import Image from "next/image";
import Link from "next/link";

export default function RestaurantsList({ restaurants }: { restaurants: Place[] }) {
    return ( 
       <div className="bg-background">
            <div className="container mx-auto text-center my-10 px-4">
                <h1 className="font-headline text-3xl md:text-4xl lg:text-5xl font-bold">
                    Best Restaurants & Dining
                </h1>
                <p className="mt-4 text-muted-foreground max-w-2xl mx-auto">
                    Experience the flavors of Africa with our curated selection of top-rated restaurants.
                </p>
            </div>

            <div className="container mx-auto px-4 lg:grid lg:grid-cols-12 gap-8 pb-16">
                <aside className="hidden lg:block lg:col-span-3">
                    <div className="sticky top-24">
                         <div className="w-full border shadow-sm rounded-lg p-2">
                            <div className="relative h-64">
                                <Image src="https://placehold.co/400x400.png" alt="Map" fill className="object-cover rounded-md" />
                                <div className="absolute w-full h-full top-0 flex items-center justify-center bg-black/30 rounded-md">
                                    <Button asChild>
                                        <Link href="/map">
                                            <MapPin className="mr-2 h-4 w-4" /> View On Map
                                        </Link>
                                    </Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
                <main className="col-span-12 lg:col-span-9">
                    { !restaurants ? (
                        <AttractionsListLoader count={9} />
                    ) : (
                        <div className="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6">
                            {restaurants.map((restaurant, i) => (
                                <PlaceCard key={i} place={restaurant} />
                            ))}
                        </div>
                    ) }
                </main>
            </div>
       </div>
     );
}
