"use client"
import Link from "next/link";
import Image from "next/image";
import { Carousel, CarouselContent, CarouselItem, CarouselNext, CarouselPrevious } from "@/components/ui/carousel";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { ArrowRight, Clock, MapPin } from "lucide-react";
import { Itinerary } from "@/lib/itineraries";

export default function FeaturedItineraries({ itineraries }: { itineraries: Itinerary[] }) {
  const featured = itineraries.length > 0 ? itineraries.slice(0, 4) : [];

  if (featured.length === 0) return null;

  return (
    <section className="w-full py-16 lg:py-24 bg-secondary">
       <div className="container mx-auto px-4">
        <div className="flex flex-col md:flex-row justify-between items-center mb-12">
            <div className="text-center md:text-left">
                <h2 className="font-headline text-3xl md:text-4xl font-bold">Featured Itineraries</h2>
                <p className="mt-2 text-lg text-muted-foreground">Get inspired by our most popular adventures.</p>
            </div>
            <Button asChild className="mt-4 md:mt-0">
                <Link href="/itineraries">
                    View All Itineraries <ArrowRight className="ml-2 h-4 w-4" />
                </Link>
            </Button>
        </div>
        <Carousel 
          opts={{
            align: "start",
            loop: featured.length > 2,
          }}
          className="w-full px-10"
        >
          <CarouselContent className="-ml-4">
            {featured.map((itinerary) => (
              <CarouselItem key={itinerary.id} className="pl-4 md:basis-1/2 lg:basis-1/3">
                <div className="h-full">
                  <Card className="h-full flex flex-col overflow-hidden transition-all duration-300 hover:shadow-xl group">
                    <div className="relative h-56">
                        <Image
                            src={itinerary.image}
                            alt={itinerary.title}
                            fill
                            className="object-cover transition-transform duration-500 group-hover:scale-105"
                        />
                    </div>
                    <CardHeader>
                        <CardTitle className="font-headline text-xl group-hover:text-primary transition-colors">{itinerary.title}</CardTitle>
                        <CardDescription className="flex items-center gap-4 pt-1">
                            <span className="flex items-center gap-1.5 text-xs">
                                <MapPin className="w-3 h-3" /> {itinerary.countries.join(', ')}
                            </span>
                            <span className="flex items-center gap-1.5 text-xs">
                                <Clock className="w-3 h-3" /> {itinerary.duration}
                            </span>
                        </CardDescription>
                    </CardHeader>
                    <CardContent className="flex-grow">
                        <p className="text-sm text-muted-foreground line-clamp-3">{itinerary.description}</p>
                    </CardContent>
                    <div className="p-6 pt-0">
                        <Button variant="link" asChild className="p-0 h-auto">
                            <Link href={`/itineraries/${itinerary.id}`}>
                                View Details <ArrowRight className="ml-2 h-4 w-4" />
                            </Link>
                        </Button>
                    </div>
                  </Card>
                </div>
              </CarouselItem>
            ))}
          </CarouselContent>
          <CarouselPrevious className="hidden sm:flex" />
          <CarouselNext className="hidden sm:flex" />
        </Carousel>
      </div>
    </section>
  );
}
