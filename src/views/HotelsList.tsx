"use client"
import { useEffect, useState } from "react";
import type { Place } from "@/lib/types";
import { PlaceCard } from "@/components/place-card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Popover, PopoverContent, PopoverTrigger } from "@/components/ui/popover";
import { format } from "date-fns";
import { MapPin, Users } from "lucide-react";
import Image from "next/image";
import Link from "next/link";
export default function HotelsList({ hotels }: { hotels: Place[] }) {
    const [guestsToggle, setGuestsToggle] = useState(false);
    const [scrolled, setScrolled] = useState(false);
    const [filterParams, setFilterParams] = useState({ 
        rooms: 1, 
        adults: 1, 
        checkin: format(new Date(), "yyyy-MM-dd"),
        checkout: '',
    })
    useEffect(() => {
        const handleScroll = () => {
            window.scrollY > 100 ? setScrolled(true) : setScrolled(false)
        };
        document.addEventListener('scroll', handleScroll);
        return () => document.removeEventListener('scroll', handleScroll);
    }, []);
    const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
        const { name, value } = e.target;
        setFilterParams((prevState) => ({...prevState, [name]: value}))
    }
    return ( 
       <div className="bg-background">
            <div className="container mx-auto text-center my-10">
                <h1 className="font-headline text-3xl md:text-4xl font-bold">
                    Hotels and Places to Stay
                </h1>
            </div>
            <div className={`${scrolled ? 'border-b shadow-sm' : ''} mb-10 z-30 sticky top-16 bg-background`}>
                <div className="container mx-auto grid grid-cols-1 md:grid-cols-3 gap-2 px-4 py-5">
                    <div className="relative">
                        <Label htmlFor="checkin" className="absolute text-xs bg-background font-semibold px-1 -top-2 left-3">Check In</Label>
                        <Input 
                            type="date" 
                            id="checkin"
                            name="checkin"
                            value={filterParams.checkin}
                            onChange={handleChange}
                            min={format(new Date(), "yyyy-MM-dd")}
                            className="w-full border-l-4 border-l-primary" 
                        />
                    </div>
                    <div className="w-full relative">
                        <Label htmlFor="checkout" className="absolute text-xs bg-background font-semibold px-1 -top-2 left-3">Check Out</Label>
                        <Input 
                            type="date" 
                            id="checkout"
                            name="checkout"
                            value={filterParams.checkout}
                            onChange={handleChange}
                            min={filterParams.checkin}
                            className="w-full border-l-4 border-l-destructive" 
                        />
                    </div>
                    <Popover open={guestsToggle} onOpenChange={setGuestsToggle}>
                        <PopoverTrigger asChild>
                            <div className="w-full relative">
                                 <button className="w-full text-left rounded-md border border-input bg-background px-3 py-2 text-sm h-10 border-l-4 border-l-muted-foreground">
                                    <Label className="absolute text-xs bg-background font-semibold px-1 -top-2 left-3">Guests</Label>
                                    <p>{ filterParams.rooms } room, { filterParams.adults } adults</p>
                                    <Users className="absolute top-1/2 -translate-y-1/2 right-3 h-4 w-4 text-muted-foreground" />
                                 </button>
                            </div>
                        </PopoverTrigger>
                        <PopoverContent className="w-[var(--radix-popover-trigger-width)]">
                            <div className="space-y-4">
                               <div className="flex justify-between items-center">
                                    <Label htmlFor="rooms">Rooms</Label>
                                    <Input 
                                        id="rooms"
                                        type="number" 
                                        name="rooms" 
                                        value={filterParams.rooms} 
                                        onChange={handleChange}
                                        min={1}
                                        className="w-20" 
                                    />
                                </div>
                                <div className="flex justify-between items-center">
                                    <Label htmlFor="adults">Adults</Label>
                                    <Input 
                                        id="adults"
                                        type="number" 
                                        name="adults" 
                                        value={filterParams.adults} 
                                        onChange={handleChange}
                                        min={1}
                                        className="w-20" 
                                    />
                                </div>
                            </div>
                        </PopoverContent>
                    </Popover>
                </div>
            </div>
            <div className="container mx-auto px-4 lg:grid lg:grid-cols-12 gap-8 pb-16">
                <aside className="hidden lg:block lg:col-span-3">
                    <div className="sticky top-40">
                         <div className="w-full border shadow-sm rounded-lg p-2">
                            <div className="relative h-64">
                                <Image src="https://placehold.co/400x400.png" alt="Map" fill className="object-cover rounded-md" />
                                <div className="absolute w-full h-full top-0 flex items-center justify-center bg-black/30 rounded-md">
                                    <Button asChild>
                                        <Link href="/map">
                                            <MapPin className="mr-2 h-4 w-4" /> View On Map
                                        </Link>
                                    </Button>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
                <main className="col-span-12 lg:col-span-9 mt-6 lg:mt-0">
                    <div className="grid grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-4 md:gap-6">
                        {hotels.map((hotel, i) => (
                            <PlaceCard key={i} place={hotel} />
                        ))}
                    </div>
                </main>
            </div>
       </div>
     );
}
