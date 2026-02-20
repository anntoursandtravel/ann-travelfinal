"use client"
import { useState } from "react";
import { APIProvider, Map, AdvancedMarker, Pin, InfoWindow } from "@vis.gl/react-google-maps";
import { places } from "@/lib/data";
import type { Place } from "@/lib/types";
import Link from "next/link";
import { Button } from "@/components/ui/button";
export default function MapView() {
  const [selectedPlace, setSelectedPlace] = useState<Place | null>(null);
  if (!process.env.NEXT_PUBLIC_GOOGLE_MAPS_API_KEY) {
    return (
      <div className="container mx-auto py-10 text-center">
        <h1 className="text-2xl font-bold">Map View</h1>
        <p className="mt-4 text-muted-foreground">Map requires a Google Maps API Key to be configured.</p>
      </div>
    );
  }
  return (
    <APIProvider apiKey={process.env.NEXT_PUBLIC_GOOGLE_MAPS_API_KEY}>
      <div className="w-full h-[calc(100vh-4rem)]">
        <Map
          defaultCenter={{ lat: -1.2921, lng: 36.8219 }} // Centered on Nairobi
          defaultZoom={6}
          mapId="ann-tours-and-travel-main-map"
          gestureHandling={'greedy'}
          disableDefaultUI={true}
        >
          {places.map((place) => (
            <AdvancedMarker
              key={place.id}
              position={place.location}
              onClick={() => setSelectedPlace(place)}
            >
              <Pin />
            </AdvancedMarker>
          ))}
          {selectedPlace && (
            <InfoWindow
              position={selectedPlace.location}
              onCloseClick={() => setSelectedPlace(null)}
            >
              <div className="p-2 space-y-2 max-w-xs">
                <h3 className="font-bold font-headline">{selectedPlace.name}</h3>
                <p className="text-sm">{selectedPlace.type} in {selectedPlace.country}</p>
                <Button asChild size="sm">
                  <Link href={`/place/${selectedPlace.id}`}>View Details</Link>
                </Button>
              </div>
            </InfoWindow>
          )}
        </Map>
      </div>
    </APIProvider>
  );
}
