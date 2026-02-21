"use client"
import type { Place } from "@/lib/types";
import { useSearchParams } from "next/navigation";
import { useEffect, useState, ComponentType } from "react";
import dynamic from "next/dynamic";

interface MapProps {
  places?: Place[];
}

const Map = dynamic<MapProps>(() => import("@/components/map"), {
  ssr: false,
  loading: () => <div className="h-full w-full bg-secondary animate-pulse flex items-center justify-center font-bold">Loading Interactive Map...</div>
});

export default function MapView({ places }: { places: Place[] }) {
    const searchParams = useSearchParams();
    const typeFilter = searchParams.get('type');
    const [filteredPlaces, setFilteredPlaces] = useState<Place[]>(places);

    useEffect(() => {
        if (typeFilter) {
            setFilteredPlaces(places.filter(p => p.type.toLowerCase() === typeFilter.toLowerCase()));
        } else {
            setFilteredPlaces(places);
        }
    }, [typeFilter, places]);

    return (
        <div className="h-[calc(100vh-64px)] w-full relative">
            <Map places={filteredPlaces} />
        </div>
    );
}
