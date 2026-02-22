"use client";

import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Card, CardContent } from "@/components/ui/card";
import { Quote, Star } from "lucide-react";

const testimonials = [
  {
    id: 1,
    name: "Sarah Mitchell",
    location: "London, UK",
    trip: "Gorilla Trekking in Uganda",
    rating: 5,
    image: "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1887&auto=format&fit=crop",
    text: "Seeing the mountain gorillas in Bwindi was a life-changing experience. Nile Crown Safaris handled every detail perfectly, from the permits to the lodges. Our guide was incredibly knowledgeable and made us feel safe the entire time."
  },
  {
    id: 2,
    name: "James & Emily Chen",
    location: "California, USA",
    trip: "Kenya & Tanzania Safari",
    rating: 5,
    image: "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1887&auto=format&fit=crop",
    text: "We wanted a mix of adventure and relaxation for our honeymoon, and this itinerary delivered! The Great Migration in the Mara was spectacular, and ending the trip on the beaches of Zanzibar was the perfect way to unwind."
  },
  {
    id: 3,
    name: "David Wilson",
    location: "Sydney, Australia",
    trip: "Rwanda Primate Tour",
    rating: 5,
    image: "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1887&auto=format&fit=crop",
    text: "I've been on many safaris, but the primate tour in Rwanda stands out. The logistics were seamless, the accommodations were top-notch, and the encounters with the Golden Monkeys and Chimps were unforgettable. Highly recommended!"
  }
];

function StarRating({ rating }: { rating: number }) {
  return (
    <div className="flex gap-1">
      {Array.from({ length: 5 }).map((_, i) => (
        <Star
          key={i}
          className={`w-4 h-4 ${i < rating ? 'fill-[#00aa6c] text-[#00aa6c]' : 'text-gray-300'}`}
        />
      ))}
    </div>
  );
}

export default function Testimonials() {
  return (
    <section className="py-16 bg-[#faf1ed]">
      <div className="container mx-auto px-4">
        <div className="text-center mb-12">
          <h2 className="font-headline text-3xl md:text-4xl font-bold mb-4">What Our Travelers Say</h2>
          <p className="text-gray-600 max-w-2xl mx-auto">Real stories from adventurers who have explored East Africa with us.</p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {testimonials.map((t) => (
            <Card key={t.id} className="border-none shadow-lg hover:shadow-xl transition-shadow duration-300 flex flex-col h-full">
              <CardContent className="pt-6 flex flex-col h-full">
                <div className="flex items-center gap-4 mb-4">
                    <Avatar className="h-12 w-12 border-2 border-white shadow-sm">
                        <AvatarImage src={t.image} alt={t.name} className="object-cover" />
                        <AvatarFallback>{t.name.substring(0, 2)}</AvatarFallback>
                    </Avatar>
                    <div>
                        <h3 className="font-bold text-sm">{t.name}</h3>
                        <p className="text-xs text-muted-foreground">{t.location}</p>
                    </div>
                </div>

                <div className="flex items-center justify-between mb-4">
                   <StarRating rating={t.rating} />
                </div>

                <div className="relative flex-grow">
                    <Quote className="h-8 w-8 text-[#00aa6c]/20 mb-2 rotate-180 absolute -top-2 -left-2" />
                    <p className="text-gray-700 text-sm leading-relaxed italic pl-6 relative z-10">
                    "{t.text}"
                    </p>
                </div>

                <div className="mt-6 pt-4 border-t border-gray-100">
                    <span className="text-xs font-medium text-[#00aa6c] bg-[#00aa6c]/10 px-2 py-1 rounded-full">
                        {t.trip}
                    </span>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </div>
    </section>
  );
}
