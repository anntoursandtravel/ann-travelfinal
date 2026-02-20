"use client"
import React, { createContext, useMemo } from 'react';
import type { Place } from '@/lib/types';
import { places as allPlaces } from '@/lib/data';
type MainContextType = {
    restaurants: Place[];
    hotels: Place[];
    attractions: Place[];
    isLoading: boolean;
};
export const MainContext = createContext<MainContextType | null>(null);
export const MainContextProvider = ({ children }: { children: React.ReactNode }) => {
    const restaurants = useMemo(() => allPlaces.filter(p => p.type === 'Restaurant'), []);
    const hotels = useMemo(() => allPlaces.filter(p => p.type === 'Hotel'), []);
    const attractions = useMemo(() => allPlaces.filter(p => p.type === 'Attraction'), []);
    const value = {
        restaurants,
        hotels,
        attractions,
        isLoading: false,
    };
    return (
        <MainContext.Provider value={value}>
            {children}
        </MainContext.Provider>
    );
};
