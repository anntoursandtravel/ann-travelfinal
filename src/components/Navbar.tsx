"use client"
import Link from "next/link"
import { Menu, Palmtree, Home, Info, Mail, MapPin, Globe, BookCopy, MessageCircle } from "lucide-react"
import { Button } from "@/components/ui/button"
import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  NavigationMenuTrigger,
  navigationMenuTriggerStyle,
} from "@/components/ui/navigation-menu"
import { Sheet, SheetContent, SheetHeader, SheetTitle, SheetTrigger } from "@/components/ui/sheet"
import { SearchBar } from "./search-bar"
import React, { useState, useEffect } from "react"
import { usePathname } from "next/navigation"
import { cn } from "@/lib/utils"
import { COUNTRIES } from "@/lib/types"
import Image from "next/image"

const destinationImages: Record<string, string> = {
  Uganda: 'https://images.unsplash.com/photo-1594555249959-8c072a2772e6?q=80&w=2070&auto=format&fit=crop',
  Kenya: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/4e/5d/93/kenya.jpg?w=900&h=500&s=1',
  Tanzania: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/a1/50/14/tanzania-safari.jpg?w=900&h=500&s=1',
  Zanzibar: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/ff/64/zanzibar-island.jpg?w=900&h=500&s=1',
  Rwanda: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/97/00/5f/rwanda.jpg?w=900&h=500&s=1',
};

const destinations = COUNTRIES.map(country => ({
  name: country,
  href: `/country/${country.toLowerCase()}`,
  description: `Experience the raw beauty and luxury of ${country}.`,
  image: destinationImages[country]
}));

export default function Navbar() {
  const [isOpen, setIsOpen] = useState(false);
  const [isScrolled, setIsScrolled] = useState(false);
  const pathname = usePathname();
  const hasHero = pathname === '/' || pathname.startsWith('/itineraries/');

  useEffect(() => {
    if (!hasHero) {
      setIsScrolled(true);
      return;
    }

    const handleScroll = () => {
      setIsScrolled(window.scrollY > 50);
    };

    // Check initial scroll position
    handleScroll();

    window.addEventListener("scroll", handleScroll);
    return () => window.removeEventListener("scroll", handleScroll);
  }, [hasHero]);

  return (
    <header className={cn(
      "fixed top-0 z-50 w-full transition-all duration-300",
      isScrolled
        ? "border-b bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60 py-2"
        : "bg-transparent py-4"
    )}>
      <div className="container flex h-16 items-center justify-between">
        <div className="flex items-center gap-6">
          <Link href="/" className="flex items-center gap-2 shrink-0">
            <Palmtree className={cn("h-8 w-8 transition-colors", isScrolled ? "text-primary" : "text-white")} />
            <span className={cn(
              "font-bold text-xl font-headline whitespace-nowrap tracking-tight transition-colors",
              isScrolled ? "text-foreground" : "text-white"
            )}>
              Nile Crown Safaris
            </span>
          </Link>
          <NavigationMenu className="hidden md:flex">
            <NavigationMenuList>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled
                    ? "bg-transparent hover:bg-white/10 text-white hover:text-white"
                    : "hover:text-primary"
                )}>
                  <Link href="/">Home</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuTrigger className={cn(
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white data-[state=open]:bg-white/10 hover:text-white"
                )}>Destinations</NavigationMenuTrigger>
                <NavigationMenuContent>
                  <ul className="grid w-[650px] grid-cols-2 gap-4 p-6">
                     {destinations.map((destination) => (
                        <ListItem
                          key={destination.name}
                          title={destination.name}
                          href={destination.href}
                          image={destination.image}
                        >
                          {destination.description}
                        </ListItem>
                      ))}
                  </ul>
                </NavigationMenuContent>
              </NavigationMenuItem>
               <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled
                    ? "bg-transparent hover:bg-white/10 text-white hover:text-white"
                    : "hover:text-primary"
                )}>
                  <Link href="/itineraries">Itineraries</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
               <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled
                    ? "bg-transparent hover:bg-white/10 text-white hover:text-white"
                    : "hover:text-primary"
                )}>
                  <Link href="/map">Map</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                 <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled
                    ? "bg-transparent hover:bg-white/10 text-white hover:text-white"
                    : "hover:text-primary"
                )}>
                  <Link href="/about">About Us</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled
                    ? "bg-transparent hover:bg-white/10 text-white hover:text-white"
                    : "hover:text-primary"
                )}>
                  <Link href="/contact">Contact</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
            </NavigationMenuList>
          </NavigationMenu>
        </div>
        <div className="flex items-center gap-4">
          <div className="hidden lg:block">
            <SearchBar />
          </div>
          <Button asChild variant="ghost" className={cn(
            "hidden xl:flex items-center gap-2 font-bold transition-colors rounded-full",
            isScrolled ? "text-muted-foreground hover:text-primary hover:bg-primary/5" : "text-white hover:text-white hover:bg-white/10"
          )}>
            <Link href="https://wa.me/1234567890" target="_blank">
              <MessageCircle className="h-4 w-4" />
              Expert Help
            </Link>
          </Button>
          <Button asChild className="hidden md:flex bg-primary hover:bg-primary/90 font-bold px-8 rounded-full shadow-md transition-all hover:shadow-lg hover:scale-105 active:scale-95">
            <Link href="/contact">Consult an Expert</Link>
          </Button>
          <Sheet open={isOpen} onOpenChange={setIsOpen}>
            <SheetTrigger asChild className="md:hidden">
              <Button variant="ghost" size="icon" className={cn("transition-colors", !isScrolled && "text-white hover:bg-white/10")}>
                <Menu className="h-6 w-6" />
                <span className="sr-only">Open menu</span>
              </Button>
            </SheetTrigger>
            <SheetContent
              side="right"
              className="w-full sm:w-[400px] p-0 flex flex-col gap-0 border-l-0"
              onOpenAutoFocus={(e) => e.preventDefault()}
            >
              <SheetHeader className="p-6 border-b border-border/50 text-left">
                <div className="flex items-center gap-2">
                   <Palmtree className="h-6 w-6 text-primary" />
                   <SheetTitle className="font-bold text-xl font-headline tracking-tight text-left">
                    Nile Crown Safaris
                  </SheetTitle>
                </div>
              </SheetHeader>

              <div className="p-6 pb-2">
                <SearchBar onResultClick={() => setIsOpen(false)}/>
              </div>

              <div className="flex-1 overflow-y-auto travel_toggle">
                <nav className="flex flex-col gap-1 p-4">
                  <Link href="/" className="group font-bold text-lg flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                    <div className="h-10 w-10 rounded-full bg-primary/10 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                      <Home className="h-5 w-5 text-primary" />
                    </div>
                    <span>Home</span>
                  </Link>

                  <div className="mt-4">
                    <h4 className="font-bold text-xs uppercase tracking-[0.2em] text-muted-foreground mb-3 px-3">Destinations</h4>
                    <div className="grid grid-cols-1 gap-1">
                      {destinations.map(({ href, name }) => (
                        <Link key={href} href={href} className="group flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                          <div className="h-10 w-10 rounded-full overflow-hidden relative border border-primary/10 shadow-sm">
                            <Image src={destinationImages[name]} alt={name} fill className="object-cover" />
                          </div>
                          <span className="font-bold">{name}</span>
                        </Link>
                      ))}
                    </div>
                  </div>

                  <div className="mt-4 pt-4 border-t border-border/50">
                     <h4 className="font-bold text-xs uppercase tracking-[0.2em] text-muted-foreground mb-3 px-3">Explore</h4>
                    <Link href="/itineraries" className="group font-bold text-lg flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                      <div className="h-10 w-10 rounded-full bg-primary/10 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                        <BookCopy className="h-5 w-5 text-primary" />
                      </div>
                      <span>Itineraries</span>
                    </Link>
                    <Link href="/map" className="group font-bold text-lg flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                      <div className="h-10 w-10 rounded-full bg-primary/10 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                        <MapPin className="h-5 w-5 text-primary" />
                      </div>
                      <span>Live Map</span>
                    </Link>
                    <Link href="/about" className="group font-bold text-lg flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                      <div className="h-10 w-10 rounded-full bg-primary/10 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                        <Info className="h-5 w-5 text-primary" />
                      </div>
                      <span>About Our Story</span>
                    </Link>
                    <Link href="/contact" className="group font-bold text-lg flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                      <div className="h-10 w-10 rounded-full bg-primary/10 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                        <Mail className="h-5 w-5 text-primary" />
                      </div>
                      <span>Contact Us</span>
                    </Link>
                  </div>
                </nav>
              </div>

              <div className="p-6 border-t border-border/50 bg-secondary/20">
                <div className="space-y-3">
                  <Button asChild className="w-full bg-primary font-bold py-7 rounded-full shadow-lg hover:shadow-primary/20 transition-all text-base">
                    <Link href="/contact" onClick={() => setIsOpen(false)}>Consult an Expert</Link>
                  </Button>
                  <Button asChild variant="outline" className="w-full py-7 rounded-full border-2 hover:bg-white transition-all text-base font-bold">
                    <Link href="https://wa.me/1234567890" target="_blank" className="flex items-center justify-center gap-3">
                      <MessageCircle className="h-5 w-5 text-primary" />
                      WhatsApp Expert
                    </Link>
                  </Button>
                </div>
              </div>
            </SheetContent>
          </Sheet>
        </div>
      </div>
    </header>
  )
}
const ListItem = React.forwardRef<
  React.ElementRef<"a">,
  React.ComponentPropsWithoutRef<"a"> & { image?: string }
>(({ className, title, children, image, ...props }, ref) => {
  return (
    <li>
      <NavigationMenuLink asChild>
        <a
          ref={ref}
          className={cn(
            "group flex gap-5 select-none rounded-xl p-3 leading-none no-underline outline-none transition-all hover:bg-secondary/50 focus:bg-secondary/50",
            className
          )}
          {...props}
        >
          {image && (
            <div className="relative h-20 w-20 shrink-0 overflow-hidden rounded-xl border border-primary/10 shadow-sm">
              <Image
                src={image}
                alt={title || ""}
                fill
                className="object-cover transition-transform duration-500 group-hover:scale-110"
              />
            </div>
          )}
          <div className="flex flex-col justify-center">
            <div className="text-base font-bold leading-none mb-1.5 group-hover:text-primary transition-colors">{title}</div>
            <p className="line-clamp-2 text-sm leading-snug text-muted-foreground group-hover:text-muted-foreground/80 transition-colors">
              {children}
            </p>
          </div>
        </a>
      </NavigationMenuLink>
    </li>
  );
});
ListItem.displayName = "ListItem"
