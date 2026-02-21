"use client"
import Image from "next/image"
import { Calendar, Clock, MapPin, CheckCircle2 } from "lucide-react"
import { Card, CardContent } from "@/components/ui/card"
import { Separator } from "@/components/ui/separator"
import { Button } from "@/components/ui/button"
import type { Itinerary } from "@/lib/itineraries"

interface ItineraryDetailsProps {
    itinerary: Itinerary
}

export default function ItineraryDetails({ itinerary }: ItineraryDetailsProps) {
    const structuredData = {
        "@context": "https://schema.org",
        "@type": "TravelItinerary",
        "name": itinerary.title,
        "description": itinerary.description,
        "image": itinerary.image,
        "timeRequired": itinerary.duration,
        "itinerary": itinerary.dailyBreakdown.map(day => ({
            "@type": "ItemList",
            "name": `Day ${day.day}: ${day.title}`,
            "description": day.description
        }))
    };

    return (
        <div className="bg-background min-h-screen">
            <script
                type="application/ld+json"
                dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
            />

            {/* Hero Section */}
            <section className="relative h-[60vh] min-h-[400px] flex items-center justify-center overflow-hidden -mt-20 md:-mt-24">
                <Image
                    src={itinerary.image}
                    alt={itinerary.title}
                    fill
                    className="object-cover"
                    priority
                />
                <div className="absolute inset-0 bg-black/40" />
                <div className="relative z-10 container mx-auto px-4 text-center text-white">
                    <div className="flex items-center justify-center gap-2 mb-4">
                        <span className="bg-primary px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wider text-primary-foreground">
                            Featured Adventure
                        </span>
                    </div>
                    <h1 className="font-headline text-4xl md:text-6xl font-bold mb-6 max-w-4xl mx-auto tracking-tight">
                        {itinerary.title}
                    </h1>
                    <div className="flex flex-wrap items-center justify-center gap-6 text-sm md:text-base font-medium">
                        <div className="flex items-center gap-2">
                            <MapPin className="w-5 h-5 text-primary" />
                            <span>{itinerary.countries.join(' & ')}</span>
                        </div>
                        <div className="flex items-center gap-2">
                            <Clock className="w-5 h-5 text-primary" />
                            <span>{itinerary.duration}</span>
                        </div>
                    </div>
                </div>
            </section>

            <div className="container mx-auto px-4 py-16 lg:py-24">
                <div className="grid lg:grid-cols-3 gap-12">
                    {/* Main Content */}
                    <div className="lg:col-span-2 space-y-12">
                        <div className="prose prose-lg max-w-none">
                            <h2 className="font-headline text-3xl font-bold text-foreground">Overview</h2>
                            <p className="text-muted-foreground leading-relaxed">
                                {itinerary.description}
                            </p>
                        </div>

                        <Separator />

                        <div>
                            <h2 className="font-headline text-3xl font-bold mb-8">Daily Itinerary</h2>
                            <div className="space-y-8 relative before:absolute before:inset-0 before:ml-5 before:-translate-x-px md:before:mx-auto md:before:translate-x-0 before:h-full before:w-0.5 before:bg-gradient-to-b before:from-transparent before:via-border before:to-transparent">
                                {itinerary.dailyBreakdown.map((day, index) => (
                                    <div key={day.day} className="relative flex items-center justify-between md:justify-normal md:odd:flex-row-reverse group is-active">
                                        {/* Icon */}
                                        <div className="flex items-center justify-center w-10 h-10 rounded-full border border-primary bg-background text-primary font-bold shadow shrink-0 md:order-1 md:group-odd:-translate-x-1/2 md:group-even:translate-x-1/2">
                                            {day.day}
                                        </div>
                                        {/* Card */}
                                        <Card className="w-[calc(100%-4rem)] md:w-[calc(50%-2.5rem)] p-6 hover:shadow-md transition-shadow">
                                            <h3 className="font-headline text-xl font-bold mb-2">{day.title}</h3>
                                            <p className="text-muted-foreground leading-relaxed">
                                                {day.description}
                                            </p>
                                        </Card>
                                    </div>
                                ))}
                            </div>
                        </div>
                    </div>

                    {/* Sidebar */}
                    <div className="lg:col-span-1">
                        <div className="sticky top-24 space-y-8">
                            <Card className="p-8 border-2 border-primary/20 shadow-xl bg-primary/5">
                                <h3 className="font-headline text-2xl font-bold mb-6">Book This Journey</h3>
                                <p className="text-muted-foreground mb-8">
                                    Ready for an unforgettable adventure? Our experts are ready to personalize this itinerary just for you.
                                </p>
                                <div className="space-y-4 mb-8">
                                    <div className="flex items-center gap-3 text-sm">
                                        <CheckCircle2 className="w-5 h-5 text-primary shrink-0" />
                                        <span>Expert local guides</span>
                                    </div>
                                    <div className="flex items-center gap-3 text-sm">
                                        <CheckCircle2 className="w-5 h-5 text-primary shrink-0" />
                                        <span>Luxury accommodations</span>
                                    </div>
                                    <div className="flex items-center gap-3 text-sm">
                                        <CheckCircle2 className="w-5 h-5 text-primary shrink-0" />
                                        <span>All-inclusive land travel</span>
                                    </div>
                                </div>
                                <Button className="w-full h-14 text-lg font-bold shadow-lg" size="lg">
                                    Inquire Now
                                </Button>
                            </Card>

                            <Card className="p-6">
                                <h4 className="font-bold mb-4">Highlights Included</h4>
                                <ul className="space-y-3 text-sm text-muted-foreground">
                                    <li className="flex items-center gap-2">• Private Safaris</li>
                                    <li className="flex items-center gap-2">• Domestic Transfers</li>
                                    <li className="flex items-center gap-2">• Park Entrance Fees</li>
                                    <li className="flex items-center gap-2">• Conservation Contributions</li>
                                </ul>
                            </Card>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}
