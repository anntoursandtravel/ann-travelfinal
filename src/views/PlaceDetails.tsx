"use client"
import Image from "next/image"
import dynamic from "next/dynamic"
import { Carousel, CarouselContent, CarouselItem, CarouselNext, CarouselPrevious } from "@/components/ui/carousel"
import { Card } from "@/components/ui/card"
import { Star, MapPin, Phone, Globe } from "lucide-react"
import { Skeleton } from "@/components/ui/skeleton"
import type { Place } from "@/lib/types"

interface MapProps {
  lat: number;
  lng: number;
}

const MapComponent = dynamic<MapProps>(() => import("@/components/map"), {
    ssr: false,
    loading: () => <Skeleton className="w-full h-full" />
})

interface PlaceDetailsProps {
    place: Place
}

export default function PlaceDetails({ place }: PlaceDetailsProps) {
  const schemaTypeMap = {
    'Hotel': 'Hotel',
    'Restaurant': 'Restaurant',
    'Attraction': 'TouristAttraction',
  };
  const structuredData = {
    "@context": "https://schema.org",
    "@type": schemaTypeMap[place.type] || 'Thing',
    "name": place.name,
    "description": place.longDescription,
    "image": place.images[0],
    "address": {
      "@type": "PostalAddress",
      "addressLocality": place.country,
      "addressCountry": place.country.substring(0,2).toUpperCase() // Simple approximation
    },
    "geo": {
      "@type": "GeoCoordinates",
      "latitude": place.location.lat,
      "longitude": place.location.lng
    },
    ...(place.rating && {
      "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": place.rating,
        "reviewCount": Math.floor(Math.random() * 200) + 50 // Placeholder review count
      }
    }),
    ...(place.contact.phone !== 'N/A' && { "telephone": place.contact.phone }),
    ...(place.contact.website.includes('http') && { "url": place.contact.website }),
  };
  return (
    <>
     <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
      />
      <div className="container mx-auto px-4 py-16">
        <div className="grid lg:grid-cols-3 gap-12">
          <div className="lg:col-span-2">
            <h1 className="font-headline text-4xl md:text-5xl font-bold tracking-tight">{place.name}</h1>
            <div className="flex items-center gap-4 mt-4 text-muted-foreground">
              <div className="flex items-center gap-1">
                <MapPin className="w-4 h-4" />
                <span>{place.country}</span>
              </div>
              <div className="flex items-center gap-2">
                <Star className="w-4 h-4 text-yellow-400 fill-yellow-400" />
                <span className="font-medium">{place.rating.toFixed(1)}</span>
              </div>
            </div>
            <Carousel className="w-full mt-8 rounded-lg overflow-hidden shadow-lg">
              <CarouselContent>
                {place.images.map((img, index) => (
                  <CarouselItem key={index}>
                      <Image
                        src={img}
                        alt={`${place.name} image ${index + 1}`}
                        width={1200}
                        height={800}
                        className="w-full h-[50vh] object-cover"
                      />
                  </CarouselItem>
                ))}
              </CarouselContent>
              <CarouselPrevious className="left-4" />
              <CarouselNext className="right-4" />
            </Carousel>
            <div className="prose prose-lg max-w-none mt-8 text-muted-foreground">
              <h2 className="font-headline text-2xl font-semibold text-foreground">About {place.name}</h2>
              <p>{place.longDescription}</p>
            </div>
          </div>
          <div className="lg:col-span-1 space-y-8">
              <Card className="p-6">
                  <h3 className="font-headline text-xl font-semibold mb-4">Location</h3>
                  <div className="w-full h-64 rounded-lg overflow-hidden">
                      <MapComponent lat={place.location.lat} lng={place.location.lng} />
                  </div>
              </Card>
              <Card className="p-6">
                  <h3 className="font-headline text-xl font-semibold mb-4">Contact Information</h3>
                  <div className="space-y-4 text-muted-foreground">
                      {place.contact.phone !== 'N/A' && (
                          <div className="flex items-center gap-3">
                              <Phone className="w-5 h-5 text-primary" />
                              <a href={`tel:${place.contact.phone}`} className="hover:underline">{place.contact.phone}</a>
                          </div>
                      )}
                      {place.contact.website.includes('http') && (
                          <div className="flex items-center gap-3">
                              <Globe className="w-5 h-5 text-primary" />
                              <a href={place.contact.website} target="_blank" rel="noopener noreferrer" className="hover:underline truncate">
                                  Visit Website
                              </a>
                          </div>
                      )}
                  </div>
              </Card>
          </div>
        </div>
      </div>
    </>
  )
}
