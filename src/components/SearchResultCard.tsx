import Link from "next/link"
import Image from "next/image"
import { Star, MessageSquare } from "lucide-react"
import type { Place } from "@/lib/types"
interface SearchResultCardProps {
  place: Place;
}
export default function SearchResultCard({ place }: SearchResultCardProps) {
  return (
    <Link href={`/place/${place.id}`} className="block group">
      <div className="block md:grid md:grid-cols-12 p-4 gap-4 border-b transition-colors hover:bg-muted/50">
        <div className="md:col-span-3 rounded overflow-hidden h-48 md:h-full relative">
          <Image
            src={place.images[0]}
            alt={place.name}
            fill
            className="object-cover rounded"
          />
        </div>
        <div className="md:col-span-9 flex flex-col justify-between">
          <div className="pt-2 md:pt-0">
            <h3 className="font-headline text-xl font-semibold mb-2 group-hover:text-primary transition-colors">
              {place.name}
            </h3>
            <p className="text-sm text-muted-foreground">{place.country} - {place.type}</p>
            <div className="flex items-center text-sm text-muted-foreground mt-2">
              <div className="flex items-center gap-1">
                {Array.from({ length: 5 }).map((_, i) => (
                  <Star key={i} className={`w-4 h-4 ${i < Math.floor(place.rating) ? 'text-yellow-400 fill-yellow-400' : 'text-gray-300'}`} />
                ))}
              </div>
              <span className="ml-2">{place.rating.toFixed(1)} rating</span>
            </div>
          </div>
          <div className="w-full self-end text-sm text-muted-foreground mt-4 space-y-1">
            <div className="flex items-center">
              <MessageSquare className="w-4 h-4 mr-2 shrink-0" />
              <p className="font-semibold text-foreground">Review Snippet</p>
            </div>
            <p className="line-clamp-2 italic">
              "...{place.description}..."
            </p>
          </div>
        </div>
      </div>
    </Link>
  )
}
