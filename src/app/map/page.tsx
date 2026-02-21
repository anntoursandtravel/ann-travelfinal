import { Suspense } from 'react';
import MapView from "@/views/MapView";
import { getPlaces } from "@/lib/api";

export default async function MapPage() {
  const allPlaces = await getPlaces();
  return (
    <Suspense fallback={<div className='h-[calc(100vh-64px)] w-full bg-secondary animate-pulse' />}>
      <MapView places={allPlaces} />
    </Suspense>
  );
}
