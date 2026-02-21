"use client";

import Link from "next/link";
import { Search, Heart, Edit3, Menu, User } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Sheet, SheetContent, SheetTrigger } from "@/components/ui/sheet";
import { useState } from "react";
import { cn } from "@/lib/utils";

export default function TripAdvisorNavbar() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <header className="sticky top-0 z-50 w-full bg-white border-b shadow-sm">
      <div className="container flex h-[60px] md:h-[80px] items-center justify-between px-4">
        {/* Logo */}
        <div className="flex items-center gap-4">
           <Sheet open={isOpen} onOpenChange={setIsOpen}>
            <SheetTrigger asChild className="lg:hidden">
              <Button variant="ghost" size="icon">
                <Menu className="h-6 w-6" />
              </Button>
            </SheetTrigger>
            <SheetContent side="left" className="w-[300px]">
               <div className="flex flex-col gap-4 mt-8">
                  <Link href="/" onClick={() => setIsOpen(false)} className="font-bold text-lg">Home</Link>
                  <Link href="/trips" onClick={() => setIsOpen(false)} className="font-bold text-lg">Trips</Link>
                  <Link href="/hotels" onClick={() => setIsOpen(false)} className="font-bold text-lg">Hotels</Link>
                  <Link href="/restaurants" onClick={() => setIsOpen(false)} className="font-bold text-lg">Restaurants</Link>
                  <Link href="/attractions" onClick={() => setIsOpen(false)} className="font-bold text-lg">Things to Do</Link>
               </div>
            </SheetContent>
          </Sheet>

          <Link href="/" className="flex items-center gap-2">
            <div className="h-8 w-8 rounded-full bg-primary flex items-center justify-center">
              <div className="text-white font-bold text-xl">N</div>
            </div>
             <span className="font-bold text-2xl tracking-tight hidden md:block">Nile Crown</span>
          </Link>
        </div>

        {/* Search Pill (Middle - Desktop) */}
        <div className="hidden lg:flex flex-1 max-w-md mx-4">
          <div className="relative w-full">
            <div className="absolute inset-y-0 left-3 flex items-center pointer-events-none">
              <Search className="h-4 w-4 text-muted-foreground" />
            </div>
            <input
              type="text"
              placeholder="Search"
              className="w-full h-10 pl-10 pr-4 rounded-full border border-gray-300 focus:outline-none focus:ring-2 focus:ring-primary/50 shadow-sm text-sm"
            />
          </div>
        </div>

        {/* Right Navigation */}
        <nav className="hidden lg:flex items-center gap-2">
          <Link href="/trips" className="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 rounded-full transition-colors font-medium">
            <Heart className="h-5 w-5" />
            <span>Trips</span>
          </Link>
          <Link href="#" className="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 rounded-full transition-colors font-medium">
            <Edit3 className="h-5 w-5" />
            <span>Review</span>
          </Link>
           <Link href="/hotels" className="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 rounded-full transition-colors font-medium">
            <span>Hotels</span>
          </Link>
           <Link href="/attractions" className="flex items-center gap-2 px-4 py-2 hover:bg-gray-100 rounded-full transition-colors font-medium">
            <span>Things to Do</span>
          </Link>
          <Button className="rounded-full bg-black hover:bg-gray-800 text-white font-bold px-6">
            Sign In
          </Button>
        </nav>

        {/* Mobile Right */}
         <div className="flex items-center gap-2 lg:hidden">
            <Search className="h-6 w-6" />
            <Link href="/trips">
               <Heart className="h-6 w-6" />
            </Link>
            <User className="h-6 w-6" />
         </div>
      </div>
    </header>
  );
}
