"use client"
import Image from "next/image"
import { itineraries } from "@/lib/itineraries"
import type { Itinerary } from "@/lib/itineraries"
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card"
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/components/ui/accordion"
import { Clock, MapPin } from "lucide-react"
export default function ItinerariesList() {
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
                        <p className="text-muted-foreground mb-4">{itinerary.description}</p>
                        <Accordion type="single" collapsible className="w-full">
                            {itinerary.dailyBreakdown.map((day) => (
                                <AccordionItem key={day.day} value={`day-${day.day}`}>
                                    <AccordionTrigger className="text-left">
                                        <span className="font-semibold">Day {day.day}:</span> {day.title}
                                    </AccordionTrigger>
                                    <AccordionContent>
                                        {day.description}
                                    </AccordionContent>
                                </AccordionItem>
                            ))}
                        </Accordion>
                    </CardContent>
                </div>
            </div>
        </Card>
    )
}
