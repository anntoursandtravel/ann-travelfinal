"use client";
import Image from "next/image";
import dynamic from "next/dynamic";
import { Button } from "@/components/ui/button";
import { AttractionsListLoader } from "@/components/loaders";
import React from "react";
import { useRouter } from "next/navigation";
import { Award, Leaf, Sparkles } from "lucide-react";
import { Card } from "@/components/ui/card";
import HeroSearch from "@/components/HeroSearch";
const WhereTo = dynamic(() => import('@/components/WhereTo'));
const WaysToTour = dynamic(() => import('@/components/WaysToTour'));
const FeaturedItineraries = dynamic(() => import('@/components/FeaturedItineraries'), { 
    loading: () => <div className="py-16 lg:py-24 bg-secondary"><AttractionsListLoader count={3} /></div> 
});
const TravelersChoice = dynamic(() => import('@/components/TravelersChoice'));
const Trending = dynamic(() => import('@/components/Trending'));

const whyChooseUs = [
  {
    icon: <Sparkles className="w-8 h-8 text-primary" />,
    title: "Exclusive Access",
    description: "Go beyond the tourist trails with private conservancies and intimate, behind-the-scenes wildlife encounters."
  },
  {
    icon: <Award className="w-8 h-8 text-primary" />,
    title: "Bespoke Luxury",
    description: "Each journey is hand-crafted to your pulse, featuring the finest boutique lodges and personalized concierge service."
  },
  {
    icon: <Leaf className="w-8 h-8 text-primary" />,
    title: "Meaningful Impact",
    description: "Your adventure directly contributes to elite conservation projects and sustainable community development."
  }
];

export default function Home() {
  const router = useRouter();
  return (
    <div className="flex flex-col min-h-dvh">
      <section className="relative h-[120vh] md:h-[150vh] lg:h-[160vh] flex items-end justify-center text-center text-white pb-24 md:pb-32 -mt-20 md:-mt-24">
        <Image
          src="https://images.unsplash.com/photo-1516426122078-c23e76319801?auto=format&fit=crop&q=80&w=2000"
          alt="Majestic Safari Landscape"
          fill
          className="object-cover object-center z-0"
          priority
        />
        <div className="absolute inset-0 bg-black/20 z-10" />
        <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-black/30 z-10" />
        <div className="relative z-20 container mx-auto px-4 flex flex-col items-center space-y-8 md:space-y-12">
          <div className="max-w-4xl animate-fade-in-up">
            <h1 className="font-headline text-5xl md:text-7xl lg:text-8xl font-bold mb-6 drop-shadow-2xl tracking-tight">
              Bespoke <span className="text-primary italic">African</span> Adventures
            </h1>
            <p className="text-xl md:text-2xl font-medium max-w-2xl mx-auto drop-shadow-lg text-white/90 mb-8">
              Curated journeys through East Africa&apos;s most breathtaking landscapes.
            </p>
            <Button
              size="lg"
              className="rounded-full px-8 py-6 text-lg font-bold bg-primary hover:bg-primary/90 transition-all hover:scale-105 shadow-2xl mb-8"
              onClick={() => router.push('/contact')}
            >
              Consult an Expert
            </Button>
          </div>
          <HeroSearch />
        </div>
      </section>

      <WhereTo />
      <WaysToTour />

      <section className="py-16 lg:py-24 bg-background">
        <div className="container mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="font-headline text-3xl md:text-4xl font-bold italic text-primary mb-2">The Distinction</h2>
            <h2 className="font-headline text-4xl md:text-5xl font-bold">Why Nile Crown Safaris?</h2>
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

      <TravelersChoice />
      <FeaturedItineraries />
      <Trending />
    </div>
  );
}
