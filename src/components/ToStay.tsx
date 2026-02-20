"use client"
import { useContext } from "react";
import { MainContext } from "@/context/MainContext";
import { PlaceCard } from "@/components/place-card";
import { Carousel, CarouselContent, CarouselItem, CarouselNext, CarouselPrevious } from "@/components/ui/carousel";
import { AttractionsListLoader } from "./loaders";
import { Button } from "./ui/button";
import Link from "next/link";
import { ArrowRight } from "lucide-react";
export default function ToStay() {
  const context = useContext(MainContext);
  if (!context) {
    return null;
  }
  const { hotels, isLoading } = context;
  if (isLoading) {
    return <AttractionsListLoader count={4} />;
  }
  if (!hotels.length) {
    return null;
  }
  return (
    <section className="w-full py-16 lg:py-24 bg-secondary">
       <div className="container mx-auto px-4">
        <div className="flex flex-col md:flex-row justify-between items-center mb-12">
            <div className="text-center md:text-left">
                <h2 className="font-headline text-3xl md:text-4xl font-bold">Places to Stay</h2>
                <p className="mt-2 text-lg text-muted-foreground">Find the perfect accommodation for your trip.</p>
            </div>
            <Button asChild className="mt-4 md:mt-0">
                <Link href="/hotels">
                    View All Hotels <ArrowRight className="ml-2 h-4 w-4" />
                </Link>
            </Button>
        </div>
        <Carousel 
          opts={{
            align: "start",
            loop: hotels.length > 3,
          }}
          className="w-full px-10"
        >
          <CarouselContent className="-ml-4">
            {hotels.slice(0, 8).map((place) => (
              <CarouselItem key={place.id} className="pl-4 md:basis-1/2 lg:basis-1/3">
                <div className="h-full">
                  <PlaceCard place={place} />
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
