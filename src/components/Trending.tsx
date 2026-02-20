"use client";
import Link from "next/link";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
const placesToGo = [
  "Maasai Mara, Kenya", "Serengeti, Tanzania", "Bwindi Forest, Uganda", "Volcanoes Park, Rwanda", 
  "Ngorongoro Crater, Tanzania", "Amboseli, Kenya", "Murchison Falls, Uganda", "Akagera Park, Rwanda",
  "Queen Elizabeth Park, Uganda", "Tarangire Park, Tanzania", "Lake Nakuru, Kenya", "Stone Town, Zanzibar"
];
const thingsToDo = [
  "Gorilla Trekking", "The Great Migration", "Mount Kilimanjaro Climb", "Serengeti Balloon Safari", 
  "Zanzibar Scuba Diving", "Explore Stone Town", "Chimpanzee Tracking", "Visit a Maasai Village", 
  "Game Drives in Amboseli", "Nile River Boat Safari", "Relax on Diani Beach", "Golden Monkey Trekking"
];
const placesToStay = [
  "Serengeti Safari Lodges", "Maasai Mara Tented Camps", "Zanzibar Beach Resorts", "Kigali City Hotels", 
  "Nairobi Boutique Hotels", "Gorilla Trekking Lodges", "Ngorongoro Crater Hotels", "Kampala Guesthouses", 
  "Diani Beach Villas", "Arusha Coffee Lodges", "Entebbe Lakeside Hotels", "Watamu Treehouses"
];
const renderLinks = (links: string[]) => (
  <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-4 gap-y-2 pt-6">
    {links.map((item) => (
      <Link key={item} href="#" className="text-sm text-muted-foreground hover:underline hover:text-primary">
        {item}
      </Link>
    ))}
  </div>
);
export default function Trending() {
  return (
    <section className="py-16 lg:py-24">
      <div className="container mx-auto px-4">
        <h2 className="font-headline text-3xl md:text-4xl font-bold mb-8">
          Trending in African Travel
        </h2>
        <Tabs defaultValue="places-to-go">
          <TabsList className="w-full justify-start overflow-x-auto travel_toggle sm:justify-center">
            <TabsTrigger value="places-to-go">Destinations</TabsTrigger>
            <TabsTrigger value="things-to-do">Experiences</TabsTrigger>
            <TabsTrigger value="places-to-stay">Places to Stay</TabsTrigger>
          </TabsList>
          <TabsContent value="places-to-go">
            {renderLinks(placesToGo)}
          </TabsContent>
          <TabsContent value="things-to-do">
            {renderLinks(thingsToDo)}
          </TabsContent>
          <TabsContent value="places-to-stay">
            {renderLinks(placesToStay)}
          </TabsContent>
        </Tabs>
      </div>
    </section>
  );
}
