"use client"

import type { Place } from "@/lib/types";
import { TripAdvisorCard } from "@/components/TripAdvisorCard";
import { Button } from "@/components/ui/button";
import { MapPin } from "lucide-react";
import Link from "next/link";
import Image from "next/image";

export default function AttractionsList({ attractions }: { attractions: Place[] }) {
    return ( 
       <div className="bg-background">
            <div className="container mx-auto text-center my-10">
                <h1 className="font-headline text-3xl md:text-4xl font-bold">
                    Attractions and Things to Do
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
                            <h3 className="font-bold text-lg mb-4">Category</h3>
                            <div className="space-y-2">
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="nature" className="rounded border-gray-300" />
                                    <label htmlFor="nature" className="text-sm">Nature & Parks</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="sights" className="rounded border-gray-300" />
                                    <label htmlFor="sights" className="text-sm">Sights & Landmarks</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="tours" className="rounded border-gray-300" />
                                    <label htmlFor="tours" className="text-sm">Tours</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="checkbox" id="outdoor" className="rounded border-gray-300" />
                                    <label htmlFor="outdoor" className="text-sm">Outdoor Activities</label>
                                </div>
                            </div>
                        </div>

                        <div className="border rounded-lg p-4">
                            <h3 className="font-bold text-lg mb-4">Traveler Rating</h3>
                            <div className="space-y-2">
                                <div className="flex items-center gap-2">
                                    <input type="radio" name="rating" id="5star" className="border-gray-300" />
                                    <label htmlFor="5star" className="text-sm">5 bubbles</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="radio" name="rating" id="4star" className="border-gray-300" />
                                    <label htmlFor="4star" className="text-sm">4 bubbles & up</label>
                                </div>
                                <div className="flex items-center gap-2">
                                    <input type="radio" name="rating" id="3star" className="border-gray-300" />
                                    <label htmlFor="3star" className="text-sm">3 bubbles & up</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>

                <main className="col-span-12 lg:col-span-9">
                    <div className="space-y-4">
                        {attractions.map((attraction) => (
                            <TripAdvisorCard key={attraction.id} place={attraction} />
                        ))}
                    </div>
                </main>
            </div>
       </div>
     );
}
