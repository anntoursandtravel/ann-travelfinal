"use client"
import Image from "next/image"
import type { Itinerary } from "@/lib/itineraries"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import { Clock, MapPin, ArrowRight } from "lucide-react"
import Link from "next/link"
import { Button } from "@/components/ui/button"

export default function ItinerariesList({ itineraries }: { itineraries: Itinerary[] }) {
    return (
        <div className="bg-background">
            <div className="container mx-auto px-4 py-16">
                <div className="text-center mb-12">
                    <h1 className="font-headline text-4xl md:text-5xl font-bold tracking-tight">Our Curated Itineraries</h1>
                    <p className="mt-4 text-lg text-muted-foreground max-w-2xl mx-auto">
                        Explore our expertly crafted journeys, designed to give you an unforgettable African adventure.
                    </p>
                </div>
                <div className="space-y-12">
                    {itineraries.map((itinerary) => (
                        <ItineraryCard key={itinerary.id} itinerary={itinerary} />
                    ))}
                </div>
            </div>
        </div>
    )
}

function ItineraryCard({ itinerary }: { itinerary: Itinerary }) {
    return (
        <Card className="overflow-hidden shadow-lg transition-all duration-300 hover:shadow-xl">
            <div className="grid md:grid-cols-12">
                <div className="md:col-span-4">
                    <Image
                        src={itinerary.image}
                        alt={itinerary.title}
                        width={600}
                        height={800}
                        className="w-full h-full object-cover"
                    />
                </div>
                <div className="md:col-span-8 flex flex-col">
                    <CardHeader>
                        <CardTitle className="font-headline text-2xl md:text-3xl">{itinerary.title}</CardTitle>
                        <CardDescription className="flex items-center gap-4 pt-2">
                             <span className="flex items-center gap-1.5">
                                <MapPin className="w-4 h-4 text-primary" /> {itinerary.countries.join(', ')}
                            </span>
                            <span className="flex items-center gap-1.5">
                                <Clock className="w-4 h-4 text-primary" /> {itinerary.duration}
                            </span>
                        </CardDescription>
                    </CardHeader>
                    <CardContent className="flex-grow">
                        <p className="text-muted-foreground mb-6">{itinerary.description}</p>
                        <div className="flex flex-col sm:flex-row gap-4 items-start sm:items-center justify-between">
                            <Button asChild variant="outline" className="border-primary text-primary hover:bg-primary/5">
                                <Link href={`/itineraries/${itinerary.id}`}>
                                    View Full Details <ArrowRight className="ml-2 h-4 w-4" />
                                </Link>
                            </Button>
                            <span className="text-sm font-medium text-primary bg-primary/5 px-4 py-2 rounded-full">
                                Customization Available
                            </span>
                        </div>
                    </CardContent>
                </div>
            </div>
        </Card>
    )
}
