"use client";

import HomeHero from "@/components/HomeHero";
import WaysToTour from "@/components/WaysToTour";
import { Place } from "@/lib/types";
import { useEffect, useState } from "react";
import { supabase } from "@/lib/supabase/client";
import { Award, Leaf, Sparkles } from "lucide-react";
import WhereTo from "@/components/WhereTo";
import FeaturedItineraries from "@/components/FeaturedItineraries";
import TravelersChoice from "@/components/TravelersChoice";
import Trending from "@/components/Trending";

const whyChooseUs = [
  {
    icon: <Sparkles className="w-8 h-8 text-black" />,
    title: "Exclusive Access",
    description: "Go beyond the tourist trails with private conservancies and intimate, behind-the-scenes wildlife encounters."
  },
  {
    icon: <Award className="w-8 h-8 text-black" />,
    title: "Bespoke Luxury",
    description: "Each journey is hand-crafted to your pulse, featuring the finest boutique lodges and personalized concierge service."
  },
  {
    icon: <Leaf className="w-8 h-8 text-black" />,
    title: "Meaningful Impact",
    description: "Your adventure directly contributes to elite conservation projects and sustainable community development."
  }
];

export default function Home() {
  const [places, setPlaces] = useState<Place[]>([]);

  useEffect(() => {
    async function fetchPlaces() {
      if (!supabase) return;
      const { data } = await supabase
        .from('places')
        .select('*')
        .order('rating', { ascending: false })
        .limit(10);

      if (data) {
        setPlaces(data as unknown as Place[]);
      }
    }
    fetchPlaces();
  }, []);

  return (
    <div className="flex flex-col min-h-screen bg-white font-sans text-black">
      <HomeHero />

      <WhereTo />

      <FeaturedItineraries />

      <TravelersChoice places={places} />

      <WaysToTour />

      <Trending />

      <section className="py-12 bg-[#f2f2f2]">
        <div className="container px-4">
          <div className="text-center mb-8">
            <h2 className="text-3xl font-bold mb-2 text-black">Why Nile Crown Safaris?</h2>
            <p className="text-gray-600">The Distinction</p>
          </div>
          <div className="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
            {whyChooseUs.map((item) => (
              <div key={item.title} className="text-center p-6 bg-white rounded-xl shadow-sm hover:shadow-md transition-all">
                <div className="flex justify-center mb-4">
                  {item.icon}
                </div>
                <h3 className="text-xl font-bold mb-2">{item.title}</h3>
                <p className="text-gray-600 text-sm">{item.description}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section className="py-12 bg-white">
         <div className="container px-4">
            <h2 className="text-2xl font-bold mb-2 text-black">More to explore</h2>
            <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mt-6">
               <div className="bg-white border p-6 rounded-xl hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2">Hotels</h3>
                  <p className="text-sm text-gray-600">Find the best places to stay</p>
               </div>
               <div className="bg-white border p-6 rounded-xl hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2">Things to Do</h3>
                  <p className="text-sm text-gray-600">Discover top attractions</p>
               </div>
               <div className="bg-white border p-6 rounded-xl hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2">Restaurants</h3>
                  <p className="text-sm text-gray-600">Eat at the best spots</p>
               </div>
               <div className="bg-white border p-6 rounded-xl hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2">Vacation Rentals</h3>
                  <p className="text-sm text-gray-600">Find your home away from home</p>
               </div>
            </div>
         </div>
      </section>
    </div>
  );
}
