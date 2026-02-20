import Link from "next/link"
import Image from "next/image"
import { Heart, Circle } from "lucide-react"
import type { Place } from "@/lib/types"
interface PlaceCardProps {
  place: Place;
}
export function PlaceCard({ place }: PlaceCardProps) {
  return (
    <Link href={`/place/${place.id}`} className="group block">
      <div className="relative mb-2">
        <Image
          src={place.images[0]}
          alt={place.name}
          width={400}
          height={300}
          className="w-full h-40 object-cover rounded-lg transition-transform duration-300 group-hover:scale-105"
        />
        <button
          onClick={(e) => { e.preventDefault(); alert('Added to favorites!'); }}
          className="absolute top-2 right-2 bg-white/70 backdrop-blur-sm rounded-full p-1.5 hover:bg-white transition-colors z-10"
          aria-label="Add to favorites"
        >
          <Heart className="w-5 h-5 text-gray-700" />
        </button>
      </div>
      <h3 className="font-semibold text-sm truncate group-hover:text-primary transition-colors">{place.name}</h3>
      <div className="flex items-center gap-1.5 text-xs text-muted-foreground">
        <div className="flex items-center gap-0.5">
            {Array.from({ length: 5 }).map((_, i) => (
              <Circle key={i} className={`w-3 h-3 ${i < Math.floor(place.rating) ? 'text-primary fill-primary' : 'text-gray-300 fill-gray-300'}`} />
            ))}
        </div>
        <span>{place.rating.toFixed(1)}</span>
      </div>
      <p className="text-xs text-muted-foreground">{place.type}</p>
    </Link>
  )
}
