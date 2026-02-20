"use client"
import { useContext } from "react";
import { MainContext } from "@/context/MainContext";
import { PlaceCard } from "@/components/place-card";
import { AttractionsListLoader } from "./loaders";
export default function ToVisit() {
  const context = useContext(MainContext);
  if (!context) {
    return null;
  }
  const { attractions, isLoading } = context;
  if (isLoading) {
    return <AttractionsListLoader count={4} />;
  }
  if (!attractions.length) {
    return null;
  }
  return (
    <section className="w-full py-16 lg:py-24">
       <div className="container mx-auto px-4">
        <div className="mb-12">
            <h2 className="font-headline text-3xl md:text-4xl font-bold">Place to Visit</h2>
            <p className="mt-2 text-lg text-muted-foreground">These are some places you might want to visit.</p>
        </div>
        <div className="max-w-md mx-auto grid grid-cols-2 gap-2">
          {attractions.slice(0, 4).map((place) => (
            <PlaceCard key={place.id} place={place} />
          ))}
        </div>
      </div>
    </section>
  );
}
