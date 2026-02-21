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
              Ann Tours & Travel
            </span>
          </Link>
          <NavigationMenu className="hidden md:flex">
            <NavigationMenuList>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white hover:text-white"
                )}>
                  <Link href="/">Home</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuTrigger className={cn(
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white data-[state=open]:bg-white/10"
                )}>Destinations</NavigationMenuTrigger>
                <NavigationMenuContent>
                  <ul className="grid w-[600px] grid-cols-2 gap-3 p-4">
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
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white hover:text-white"
                )}>
                  <Link href="/itineraries">Itineraries</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
               <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white hover:text-white"
                )}>
                  <Link href="/map">Map</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                 <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white hover:text-white"
                )}>
                  <Link href="/about">About Us</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={cn(
                  navigationMenuTriggerStyle(),
                  !isScrolled && "bg-transparent hover:bg-white/10 text-white hover:text-white"
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
            "hidden xl:flex items-center gap-2 font-medium transition-colors",
            isScrolled ? "text-muted-foreground" : "text-white/80 hover:text-white hover:bg-white/10"
          )}>
            <Link href="https://wa.me/1234567890" target="_blank">
              <MessageCircle className="h-4 w-4" />
              Expert Help
            </Link>
          </Button>
          <Button asChild className="hidden md:flex bg-primary hover:bg-primary/90 font-bold px-6 shadow-md transition-all hover:shadow-lg">
            <Link href="/contact">Consult an Expert</Link>
          </Button>
          <Sheet open={isOpen} onOpenChange={setIsOpen}>
            <SheetTrigger asChild className="md:hidden">
              <Button variant="ghost" size="icon" className={cn("transition-colors", !isScrolled && "text-white hover:bg-white/10")}>
                <Menu className="h-6 w-6" />
                <span className="sr-only">Open menu</span>
              </Button>
            </SheetTrigger>
            <SheetContent side="right" className="w-[300px] sm:w-[400px]">
               <SheetHeader>
                 <SheetTitle className="sr-only">Menu</SheetTitle>
              </SheetHeader>
              <div className="p-4">
                <SearchBar onResultClick={() => setIsOpen(false)}/>
              </div>
              <nav className="flex flex-col gap-4 p-4">
                <Link href="/" className="font-medium flex items-center gap-3 py-2 border-b border-border/50" onClick={() => setIsOpen(false)}>
                  <Home className="h-5 w-5 text-primary" />
                  <span>Home</span>
                </Link>

                <div>
                  <h4 className="font-bold text-sm uppercase tracking-widest text-muted-foreground mb-3 px-1">Destinations</h4>
                  <div className="grid grid-cols-1 gap-2">
                    {destinations.map(({ href, name }) => (
                      <Link key={href} href={href} className="group flex items-center gap-3 p-2 rounded-lg hover:bg-secondary transition-colors" onClick={() => setIsOpen(false)}>
                        <div className="h-8 w-8 rounded-full overflow-hidden relative">
                          <Image src={destinationImages[name]} alt={name} fill className="object-cover" />
                        </div>
                        <span className="font-medium">{name}</span>
                      </Link>
                    ))}
                  </div>
                </div>

                <div className="flex flex-col gap-2 pt-4 border-t border-border/50">
                  <Link href="/itineraries" className="font-medium flex items-center gap-3 py-1" onClick={() => setIsOpen(false)}>
                    <BookCopy className="h-5 w-5 text-primary" />
                    <span>Itineraries</span>
                  </Link>
                  <Link href="/map" className="font-medium flex items-center gap-3 py-1" onClick={() => setIsOpen(false)}>
                    <MapPin className="h-5 w-5 text-primary" />
                    <span>Map</span>
                  </Link>
                  <Link href="/about" className="font-medium flex items-center gap-3 py-1" onClick={() => setIsOpen(false)}>
                    <Info className="h-5 w-5 text-primary" />
                    <span>About Us</span>
                  </Link>
                  <Link href="/contact" className="font-medium flex items-center gap-3 py-1" onClick={() => setIsOpen(false)}>
                    <Mail className="h-5 w-5 text-primary" />
                    <span>Contact</span>
                  </Link>
                </div>

                <div className="mt-6 space-y-4">
                  <Button asChild className="w-full bg-primary font-bold py-6">
                    <Link href="/contact" onClick={() => setIsOpen(false)}>Consult an Expert</Link>
                  </Button>
                  <Button asChild variant="outline" className="w-full py-6">
                    <Link href="https://wa.me/1234567890" target="_blank" className="flex items-center justify-center gap-2">
                      <MessageCircle className="h-5 w-5" />
                      WhatsApp Us
                    </Link>
                  </Button>
                </div>
              </nav>
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
            "group flex gap-4 select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-all hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground",
            className
          )}
          {...props}
        >
          {image && (
            <div className="relative h-16 w-16 shrink-0 overflow-hidden rounded-md">
              <Image
                src={image}
                alt={title || ""}
                fill
                className="object-cover transition-transform group-hover:scale-110"
              />
            </div>
          )}
          <div>
            <div className="text-sm font-bold leading-none mb-1">{title}</div>
            <p className="line-clamp-2 text-xs leading-snug text-muted-foreground">
              {children}
            </p>
          </div>
        </a>
      </NavigationMenuLink>
    </li>
  );
});
ListItem.displayName = "ListItem"
