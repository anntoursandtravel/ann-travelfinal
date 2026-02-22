"use client"
import Image from "next/image";
import Link from "next/link";
import { Award } from "lucide-react";
import { Button } from "./ui/button";
import { Carousel, CarouselContent, CarouselItem, CarouselNext, CarouselPrevious } from "@/components/ui/carousel";
import { Place } from "@/lib/types";

interface TravelersChoiceProps {
  places: Place[];
}

export default function TravelersChoice({ places }: TravelersChoiceProps) {
  if (!places || places.length === 0) {
    return null;
  }

  return (
    <section className="bg-[#004f32] py-16 text-white overflow-visible relative z-0">
      <div className="container mx-auto px-4">
         <div className="flex flex-col md:flex-row items-center justify-between mb-12 gap-6">
            <div className="flex items-center gap-4">
                <div className="bg-yellow-400 p-3 rounded-full shrink-0">
                    <Award className="h-8 w-8 text-[#004f32]" />
                </div>
                <div>
                    <h2 className="font-headline font-bold text-3xl md:text-5xl tracking-tight">
                        Travelers&apos; Choice
                    </h2>
                    <p className="text-white/80 mt-1 text-lg font-medium">Best of the Best</p>
                </div>
            </div>
            <Button asChild size="lg" className="bg-white text-black hover:bg-gray-100 font-bold rounded-full px-8 shadow-lg transition-transform hover:scale-105">
                <Link href="/attractions">See the winners</Link>
            </Button>
         </div>

         <div className="relative px-4 md:px-0">
            <Carousel
                opts={{
                    align: "start",
                    loop: true,
                }}
                className="w-full"
            >
                <CarouselContent className="-ml-4">
                    {places.map((place) => (
                        <CarouselItem key={place.id} className="pl-4 basis-1/2 md:basis-1/3 lg:basis-1/4">
                            <Link href={`/place/${place.id}`} className="block group h-full">
                                <div className="bg-white rounded-2xl overflow-hidden h-full text-black transition-all duration-300 hover:shadow-xl hover:-translate-y-1">
                                    <div className="relative h-48 w-full">
                                        <Image
                                            src={place.images[0]}
                                            alt={place.name}
                                            fill
                                            className="object-cover transition-transform duration-500 group-hover:scale-110"
                                        />
                                        <div className="absolute top-3 left-3 bg-yellow-400 text-[#004f32] text-xs font-bold px-3 py-1.5 rounded-full shadow-sm flex items-center gap-1">
                                            <Award className="w-3 h-3" />
                                            2025 Winner
                                        </div>
                                    </div>
                                    <div className="p-5">
                                        <h3 className="font-bold text-lg leading-tight mb-2 line-clamp-2 group-hover:underline decoration-2 decoration-[#004f32] underline-offset-4">{place.name}</h3>
                                        <p className="text-sm text-gray-500 font-medium">{place.country}</p>
                                    </div>
                                </div>
                            </Link>
                        </CarouselItem>
                    ))}
                </CarouselContent>
                <CarouselPrevious className="hidden md:flex bg-white/10 text-white hover:bg-white hover:text-[#004f32] border-none -left-12 h-12 w-12" />
                <CarouselNext className="hidden md:flex bg-white/10 text-white hover:bg-white hover:text-[#004f32] border-none -right-12 h-12 w-12" />
            </Carousel>
         </div>
      </div>
    </section>
  );
}
