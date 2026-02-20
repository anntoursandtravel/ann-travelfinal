"use client"
import { APIProvider, Map, AdvancedMarker } from "@vis.gl/react-google-maps"
import { MapPin } from "lucide-react"
interface MapComponentProps {
  lat: number;
  lng: number;
}
export function MapComponent({ lat, lng }: MapComponentProps) {
  const position = { lat, lng };
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
        defaultCenter={position}
        defaultZoom={14}
        mapId="ann-tours-and-travel-map"
        className="w-full h-full rounded-lg"
        gestureHandling={'greedy'}
        disableDefaultUI={true}
      >
        <AdvancedMarker position={position}>
            <MapPin className="h-8 w-8 text-primary" />
        </AdvancedMarker>
      </Map>
    </APIProvider>
  )
}
