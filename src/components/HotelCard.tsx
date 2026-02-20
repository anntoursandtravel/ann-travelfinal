import Link from "next/link"
import Image from "next/image"
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { ArrowRight, Star } from "lucide-react"
import type { Place } from "@/lib/types"
interface HotelCardProps {
  place: Place;
}
export default function HotelCard({ place }: HotelCardProps) {
  return (
    <Card className="grid grid-cols-1 md:grid-cols-12 overflow-hidden transition-all duration-300 hover:shadow-xl w-full">
      <div className="md:col-span-4">
         <Image
            src={place.images[0]}
            alt={place.name}
            width={400}
            height={300}
            className="w-full h-60 md:h-full object-cover"
          />
      </div>
      <div className="md:col-span-8 flex flex-col">
        <CardHeader>
          <CardTitle className="font-headline text-xl md:text-2xl">{place.name}</CardTitle>
          <CardDescription>{place.country} - {place.type}</CardDescription>
        </CardHeader>
        <CardContent className="flex-grow space-y-4 py-0">
           <div className="flex items-center">
            {Array.from({ length: 5 }).map((_, i) => (
              <Star key={i} className={`w-5 h-5 ${i < Math.floor(place.rating) ? 'text-yellow-400 fill-yellow-400' : 'text-gray-300'}`} />
            ))}
            <span className="ml-2 text-sm text-muted-foreground">{place.rating.toFixed(1)} rating</span>
          </div>
          <p className="text-muted-foreground line-clamp-3">{place.description}</p>
        </CardContent>
        <CardFooter className="justify-end pt-6">
           <Button asChild>
            <Link href={`/place/${place.id}`}>
              View Details <ArrowRight className="ml-2 h-4 w-4" />
            </Link>
          </Button>
        </CardFooter>
      </div>
    </Card>
  )
}
