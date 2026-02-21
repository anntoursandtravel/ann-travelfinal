"use client";
import Image from "next/image";
import dynamic from "next/dynamic";
import { Button } from "@/components/ui/button";
import { AttractionsListLoader } from "@/components/loaders";
import React from "react";
import { useRouter } from "next/navigation";
import { Award, Leaf, Map, Sparkles } from "lucide-react";
import { Card } from "@/components/ui/card";
import HeroSearch from "@/components/HeroSearch";
const WhereTo = dynamic(() => import('@/components/WhereTo'));
const FeaturedItineraries = dynamic(() => import('@/components/FeaturedItineraries'), { 
    loading: () => <div className="py-16 lg:py-24 bg-secondary"><AttractionsListLoader count={3} /></div> 
});
const TravelersChoice = dynamic(() => import('@/components/TravelersChoice'));
const Trending = dynamic(() => import('@/components/Trending'));
const whyChooseUs = [
  {
    icon: <Map className="w-8 h-8 text-primary" />,
    title: "Expert Local Knowledge",
    description: "Our guides are locals with deep knowledge of the culture, history, and wildlife of each destination."
  },
  {
    icon: <Sparkles className="w-8 h-8 text-primary" />,
    title: "Bespoke Itineraries",
    description: "We craft personalized journeys tailored to your interests, budget, and travel style for a unique adventure."
  },
  {
    icon: <Leaf className="w-8 h-8 text-primary" />,
    title: "Sustainable Tourism",
    description: "We are committed to responsible travel that benefits local communities and conserves the environment."
  }
];
export default function Home() {
  const router = useRouter();
  return (
    <div className="flex flex-col min-h-dvh">
      <section className="relative h-[120vh] md:h-[150vh] lg:h-[160vh] flex items-end justify-center text-center text-white pb-24 md:pb-32">
        <Image
          src="https://raw.githubusercontent.com/drewversedesign/ann-pics/main/Explore%20East%20Africa%20with%20Ann%20Tours%20.png"
          alt="Safari animals collage"
          fill
          className="object-cover object-center z-0"
          priority
        />
        <div className="absolute inset-0 bg-gradient-to-t from-black/40 via-transparent to-black/20 z-10" />
        <div className="relative z-20 container mx-auto px-4 flex flex-col items-center space-y-8 md:space-y-12">
          <div className="max-w-4xl animate-fade-in-up">
            <h1 className="font-headline text-5xl md:text-7xl lg:text-8xl font-bold mb-6 drop-shadow-2xl">
              Unforgettable <span className="text-primary italic">African</span> Journeys
            </h1>
            <p className="text-xl md:text-2xl font-medium max-w-2xl mx-auto drop-shadow-lg text-white/90">
              Bespoke safari adventures across the heart of East Africa.
            </p>
          </div>
          <HeroSearch />
        </div>
      </section>
      <WhereTo />
      <section className="py-16 lg:py-24 bg-background">
        <div className="container mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="font-headline text-3xl md:text-4xl font-bold">Why Travel With Us?</h2>
            <p className="mt-2 text-lg text-muted-foreground">The Ann Tours and Travel Difference</p>
          </div>
          <div className="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
            {whyChooseUs.map((item) => (
              <Card key={item.title} className="text-center p-8 border-2 border-transparent hover:border-primary hover:shadow-2xl transition-all duration-300">
                <div className="flex justify-center mb-4">
                  {item.icon}
                </div>
                <h3 className="font-headline text-xl font-semibold mb-2">{item.title}</h3>
                <p className="text-muted-foreground">{item.description}</p>
              </Card>
            ))}
          </div>
        </div>
      </section>
      <FeaturedItineraries />
      <TravelersChoice />
      <Trending />
    </div>
  );
}
