"use client"
import { APIProvider, Map, AdvancedMarker, InfoWindow } from "@vis.gl/react-google-maps"
import { MapPin } from "lucide-react"
import { useState } from "react"
import type { Place } from "@/lib/types"
import Image from "next/image"
import Link from "next/link"

interface MapComponentProps {
  places?: Place[];
  lat?: number;
  lng?: number;
}

export default function MapComponent({ places, lat, lng }: MapComponentProps) {
  const [selectedPlace, setSelectedPlace] = useState<Place | null>(null);

  const center = lat && lng ? { lat, lng } : { lat: 1.3733, lng: 32.2903 }; // Default to Uganda center
  const zoom = lat && lng ? 14 : 6;

  if (!process.env.NEXT_PUBLIC_GOOGLE_MAPS_API_KEY) {
    return (
      <div className="w-full h-full bg-muted flex items-center justify-center rounded-lg">
        <p className="text-muted-foreground">Map requires Google Maps API Key.</p>
      </div>
    );
  }

  return (
    <APIProvider apiKey={process.env.NEXT_PUBLIC_GOOGLE_MAPS_API_KEY}>
      <Map
        defaultCenter={center}
        defaultZoom={zoom}
        mapId="ann-tours-and-travel-map"
        className="w-full h-full rounded-lg"
        gestureHandling={'greedy'}
        disableDefaultUI={false}
      >
        {lat && lng && !places && (
          <AdvancedMarker position={{ lat, lng }}>
            <MapPin className="h-8 w-8 text-primary" />
          </AdvancedMarker>
        )}

        {places?.map((place) => (
          <AdvancedMarker
            key={place.id}
            position={place.location}
            onClick={() => setSelectedPlace(place)}
          >
            <MapPin className="h-8 w-8 text-primary hover:scale-110 transition-transform cursor-pointer" />
          </AdvancedMarker>
        ))}

        {selectedPlace && (
          <InfoWindow
            position={selectedPlace.location}
            onCloseClick={() => setSelectedPlace(null)}
          >
            <div className="p-2 max-w-[200px]">
              <div className="relative h-24 w-full mb-2">
                <Image src={selectedPlace.images[0]} alt={selectedPlace.name} fill className="object-cover rounded" />
              </div>
              <h3 className="font-bold text-sm">{selectedPlace.name}</h3>
              <p className="text-xs text-muted-foreground mb-2">{selectedPlace.type} • {selectedPlace.country}</p>
              <Link href={`/place/${selectedPlace.id}`} className="text-xs text-primary font-bold hover:underline">
                View Details
              </Link>
            </div>
          </InfoWindow>
        )}
      </Map>
    </APIProvider>
  )
}
