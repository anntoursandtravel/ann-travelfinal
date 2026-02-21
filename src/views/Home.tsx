"use client";

import HomeHero from "@/components/HomeHero";
import { TripAdvisorCard } from "@/components/TripAdvisorCard";
import { Place } from "@/lib/types";
import { useEffect, useState } from "react";
import { supabase } from "@/lib/supabase/client";

export default function Home() {
  const [places, setPlaces] = useState<Place[]>([]);

  useEffect(() => {
    async function fetchPlaces() {
      if (!supabase) return;
      const { data } = await supabase
        .from('places')
        .select('*')
        .limit(6);

      if (data) {
        setPlaces(data as unknown as Place[]);
      }
    }
    fetchPlaces();
  }, []);

  return (
    <div className="flex flex-col min-h-screen bg-white">
      <HomeHero />

      <section className="py-12 bg-white">
        <div className="container px-4">
          <h2 className="text-2xl font-bold mb-6 text-black">2025 Travelers' Choice Best of the Best</h2>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {places.map((place) => (
              <TripAdvisorCard key={place.id} place={place} />
            ))}
          </div>
        </div>
      </section>

      <section className="py-12 bg-[#f2f2f2]">
         <div className="container px-4">
            <h2 className="text-2xl font-bold mb-2 text-black">More to explore</h2>
            <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mt-6">
               <div className="bg-white p-6 rounded-xl shadow-sm hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2 text-primary">Hotels</h3>
                  <p className="text-sm text-gray-600">Find the best places to stay</p>
               </div>
               <div className="bg-white p-6 rounded-xl shadow-sm hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2 text-primary">Things to Do</h3>
                  <p className="text-sm text-gray-600">Discover top attractions</p>
               </div>
               <div className="bg-white p-6 rounded-xl shadow-sm hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2 text-primary">Restaurants</h3>
                  <p className="text-sm text-gray-600">Eat at the best spots</p>
               </div>
               <div className="bg-white p-6 rounded-xl shadow-sm hover:shadow-md cursor-pointer">
                  <h3 className="font-bold text-lg mb-2 text-primary">Vacation Rentals</h3>
                  <p className="text-sm text-gray-600">Find your home away from home</p>
               </div>
            </div>
         </div>
      </section>
    </div>
  );
}
