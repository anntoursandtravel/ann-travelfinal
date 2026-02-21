import Link from "next/link";
import Image from "next/image";
import { Heart, Check } from "lucide-react";
import { Button } from "@/components/ui/button";
import { BubbleRating } from "@/components/ui/BubbleRating";
import type { Place } from "@/lib/types";

interface TripAdvisorCardProps {
  place: Place;
}

export function TripAdvisorCard({ place }: TripAdvisorCardProps) {
  // Mock data for TripAdvisor look
  const reviewsCount = Math.floor(Math.random() * 2000) + 50;
  const price = Math.floor(Math.random() * 300) + 100;

  return (
    <Link href={`/place/${place.id}`} className="group block bg-white border rounded-xl overflow-hidden hover:shadow-lg transition-shadow duration-300 mb-4">
      <div className="flex flex-col md:flex-row">
        {/* Image Section - Fixed width on desktop */}
        <div className="relative w-full md:w-[300px] h-48 md:h-auto shrink-0">
          <Image
            src={place.images[0]}
            alt={place.name}
            fill
            className="object-cover"
          />
          <button
            onClick={(e) => { e.preventDefault(); alert('Added to favorites!'); }}
            className="absolute top-3 right-3 bg-white p-2 rounded-full shadow-md hover:bg-gray-50 transition-colors z-10"
          >
            <Heart className="w-5 h-5 text-gray-600" />
          </button>
        </div>

        {/* Content Section */}
        <div className="flex-1 p-4 md:p-6 flex flex-col justify-between">
          <div>
            <div className="flex justify-between items-start">
              <div>
                <h3 className="text-xl font-bold group-hover:underline decoration-2 decoration-primary underline-offset-4 mb-2">
                  {place.name}
                </h3>
                <div className="flex items-center gap-2 mb-2">
                  <BubbleRating rating={place.rating} />
                  <span className="text-sm text-muted-foreground">{reviewsCount} reviews</span>
                </div>
                <div className="text-sm text-muted-foreground mb-4">
                   {place.type} • {place.country}
                </div>
              </div>
              {/* Price Section for Desktop */}
               <div className="hidden md:block text-right">
                  <div className="text-xs text-muted-foreground">from</div>
                  <div className="text-2xl font-bold">${price}</div>
                  <div className="text-xs text-muted-foreground">per night</div>
               </div>
            </div>

            {/* Features / Badges */}
            <div className="space-y-1 mb-4">
              <div className="flex items-center gap-2 text-sm text-green-700">
                <Check className="w-4 h-4" />
                <span className="font-medium">Free cancellation</span>
              </div>
              <div className="flex items-center gap-2 text-sm text-green-700">
                <Check className="w-4 h-4" />
                <span className="font-medium">Reserve now, pay later</span>
              </div>
            </div>

             {/* Description Snippet */}
            <p className="text-sm text-muted-foreground line-clamp-2 mb-4">
              {place.description}
            </p>
          </div>

          <div className="flex items-center justify-between md:justify-end gap-4 mt-auto">
             {/* Price for Mobile */}
             <div className="md:hidden">
                  <div className="text-xs text-muted-foreground">from</div>
                  <div className="text-xl font-bold">${price}</div>
             </div>
            <Button className="font-bold rounded-full px-6 bg-yellow-400 hover:bg-yellow-500 text-black border-none">
              View Deal
            </Button>
          </div>
        </div>
      </div>
    </Link>
  );
}
