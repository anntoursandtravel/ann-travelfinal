"use client"

import type { Place } from "@/lib/types";
import { TripAdvisorCard } from "@/components/TripAdvisorCard";
import { Button } from "@/components/ui/button";
import { MapPin } from "lucide-react";
import Link from "next/link";
import Image from "next/image";

export default function RestaurantsList({ restaurants }: { restaurants: Place[] }) {
    return ( 
       <div className="bg-background">
            <div className="container mx-auto text-center my-10">
                <h1 className="font-headline text-3xl md:text-4xl font-bold">
                    Restaurants and Places to Eat
                </h1>
            </div>

            <div className="container mx-auto px-4 lg:grid lg:grid-cols-12 gap-8 pb-16">
                <aside className="hidden lg:block lg:col-span-3">
                    <div className="sticky top-24 space-y-6">
                         <div className="w-full border shadow-sm rounded-lg p-2">
                            <div className="relative h-48">
                                <Image src="https://placehold.co/400x400.png" alt="Map" fill className="object-cover rounded-md" />
                                <div className="absolute w-full h-full top-0 flex items-center justify-center bg-black/30 rounded-md">
                                    <Button asChild size="sm">
                                        <Link href="/map">
                                            <MapPin className="mr-2 h-4 w-4" /> View Map
                                        </Link>
                                    </Button>
                                </div>
                            </div>
                        </div>

                        <div className="border rounded-lg p-4">
                            <h3 className="font-bold text-lg mb-4">Cuisine</h3>
                            <div className="space-y-2">
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="african" className="rounded border-gray-300" />
                                    <label htmlFor="african" className="text-sm">African</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="italian" className="rounded border-gray-300" />
                                    <label htmlFor="italian" className="text-sm">Italian</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="indian" className="rounded border-gray-300" />
                                    <label htmlFor="indian" className="text-sm">Indian</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="intl" className="rounded border-gray-300" />
                                    <label htmlFor="intl" className="text-sm">International</label>
                                </div>
                            </div>
                        </div>

                        <div className="border rounded-lg p-4">
                            <h3 className="font-bold text-lg mb-4">Dietary Restrictions</h3>
                            <div className="space-y-2">
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="veg" className="rounded border-gray-300" />
                                    <label htmlFor="veg" className="text-sm">Vegetarian Friendly</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="vegan" className="rounded border-gray-300" />
                                    <label htmlFor="vegan" className="text-sm">Vegan Options</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="gf" className="rounded border-gray-300" />
                                    <label htmlFor="gf" className="text-sm">Gluten Free Options</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>

                <main className="col-span-12 lg:col-span-9">
                    <div className="space-y-4">
                        {restaurants.map((restaurant) => (
                            <TripAdvisorCard key={restaurant.id} place={restaurant} />
                        ))}
                    </div>
                </main>
            </div>
       </div>
     );
}
