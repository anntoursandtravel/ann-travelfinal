"use client";

import { Search, Home, Bed, Utensils, MapPin, Building } from "lucide-react";
import { Tabs, TabsList, TabsTrigger, TabsContent } from "@/components/ui/tabs";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";

export default function HomeHero() {
  return (
    <section className="relative w-full py-12 md:py-24 lg:py-32 bg-white flex flex-col items-center justify-center text-center">
      <div className="container px-4 md:px-6">
        <h1 className="text-4xl md:text-6xl font-black tracking-tighter mb-8 text-black font-sans">
          Where to?
        </h1>

        <div className="w-full max-w-4xl mx-auto">
          <Tabs defaultValue="all" className="w-full">
            <TabsList className="grid w-full grid-cols-2 md:grid-cols-5 h-auto bg-transparent gap-2 mb-8">
              <TabsTrigger
                value="all"
                className="flex flex-col items-center justify-center gap-2 py-4 rounded-xl data-[state=active]:bg-white data-[state=active]:shadow-md border border-transparent data-[state=active]:border-gray-200 transition-all hover:bg-gray-50"
              >
                <Search className="h-6 w-6" />
                <span className="font-bold">Search All</span>
              </TabsTrigger>
              <TabsTrigger
                value="hotels"
                className="flex flex-col items-center justify-center gap-2 py-4 rounded-xl data-[state=active]:bg-white data-[state=active]:shadow-md border border-transparent data-[state=active]:border-gray-200 transition-all hover:bg-gray-50"
              >
                <Bed className="h-6 w-6" />
                <span className="font-bold">Hotels</span>
              </TabsTrigger>
              <TabsTrigger
                value="attractions"
                className="flex flex-col items-center justify-center gap-2 py-4 rounded-xl data-[state=active]:bg-white data-[state=active]:shadow-md border border-transparent data-[state=active]:border-gray-200 transition-all hover:bg-gray-50"
              >
                <MapPin className="h-6 w-6" />
                <span className="font-bold">Things to Do</span>
              </TabsTrigger>
              <TabsTrigger
                value="restaurants"
                className="flex flex-col items-center justify-center gap-2 py-4 rounded-xl data-[state=active]:bg-white data-[state=active]:shadow-md border border-transparent data-[state=active]:border-gray-200 transition-all hover:bg-gray-50"
              >
                <Utensils className="h-6 w-6" />
                <span className="font-bold">Restaurants</span>
              </TabsTrigger>
              <TabsTrigger
                value="rentals"
                className="flex flex-col items-center justify-center gap-2 py-4 rounded-xl data-[state=active]:bg-white data-[state=active]:shadow-md border border-transparent data-[state=active]:border-gray-200 transition-all hover:bg-gray-50"
              >
                <Home className="h-6 w-6" />
                <span className="font-bold">Vacation Rentals</span>
              </TabsTrigger>
            </TabsList>

            <div className="relative w-full max-w-3xl mx-auto">
               <div className="relative drop-shadow-2xl">
                <Search className="absolute left-6 top-1/2 -translate-y-1/2 h-6 w-6 text-black z-10" />
                <Input
                  className="w-full h-16 pl-16 pr-32 rounded-full border-none shadow-lg text-lg font-medium placeholder:text-gray-500 focus-visible:ring-0 focus-visible:ring-offset-0"
                  placeholder="Places to go, things to do, hotels..."
                />
                <Button className="absolute right-2 top-2 bottom-2 rounded-full px-8 font-bold bg-primary hover:bg-primary/90 text-black text-lg h-auto">
                  Search
                </Button>
              </div>
            </div>
          </Tabs>
        </div>
      </div>
    </section>
  );
}
