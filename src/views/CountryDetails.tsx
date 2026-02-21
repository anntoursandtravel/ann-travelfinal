"use client"
import type { Place } from "@/lib/types"
import { PlaceCard } from "@/components/place-card"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { useMemo } from "react"
import type { Itinerary } from "@/lib/itineraries"
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card"
import Image from "next/image"
import { Clock, MapPin } from "lucide-react"
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/components/ui/accordion"

interface CountryDetailsProps {
  country: Place['country']
  places: Place[]
  itineraries: Itinerary[]
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

export default function CountryDetails({ country, places, itineraries: countryItineraries }: CountryDetailsProps) {
  const attractions = useMemo(() => places.filter(p => p.type === 'Attraction'), [places])
  const hotels = useMemo(() => places.filter(p => p.type === 'Hotel'), [places])
  const restaurants = useMemo(() => places.filter(p => p.type === 'Restaurant'), [places])

  const placeTypes = [
    { name: "Attractions", data: attractions, count: attractions.length, type: 'place' },
    { name: "Hotels", data: hotels, count: hotels.length, type: 'place' },
    { name: "Restaurants", data: restaurants, count: restaurants.length, type: 'place' },
    { name: "Itineraries", data: countryItineraries, count: countryItineraries.length, type: 'itinerary' },
  ].filter(pt => pt.count > 0);

  if (placeTypes.length === 0) {
    return (
      <div className="container mx-auto px-4 py-16 text-center">
        <h1 className="font-headline text-4xl md:text-5xl font-bold tracking-tight">Explore {country}</h1>
        <p className="mt-8 text-lg text-muted-foreground">No places found for {country} yet. Check back soon!</p>
      </div>
    )
  }

  return (
    <div className="bg-background">
      <div className="container mx-auto px-4 py-16">
        <div className="text-center mb-12">
          <h1 className="font-headline text-4xl md:text-5xl font-bold tracking-tight">Explore {country}</h1>
          <p className="mt-4 text-lg text-muted-foreground max-w-2xl mx-auto">
            Discover the best places to visit, stay, and eat in {country}.
          </p>
        </div>
        <Tabs defaultValue={placeTypes[0].name.toLowerCase()} className="w-full">
          <TabsList className="flex flex-wrap h-auto justify-center">
            {placeTypes.map(pt => (
              <TabsTrigger key={pt.name} value={pt.name.toLowerCase()}>{pt.name} ({pt.count})</TabsTrigger>
            ))}
          </TabsList>
          {placeTypes.map(pt => (
            <TabsContent key={pt.name} value={pt.name.toLowerCase()}>
               {pt.type === 'place' && (
                <div className="mt-8 grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 md:gap-6">
                  {(pt.data as Place[]).map(place => (
                    <PlaceCard key={place.id} place={place} />
                  ))}
                </div>
              )}
              {pt.type === 'itinerary' && (
                <div className="mt-8 space-y-12">
                  {(pt.data as Itinerary[]).map(itinerary => (
                    <ItineraryCard key={itinerary.id} itinerary={itinerary} />
                  ))}
                </div>
              )}
            </TabsContent>
          ))}
        </Tabs>
      </div>
    </div>
  )
}
