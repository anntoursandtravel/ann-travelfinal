"use client"
import Link from "next/link"
import { Menu, Palmtree, Search, Home, Info, Mail, MapPin, Globe, BookCopy } from "lucide-react"
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
import React from "react"
import { cn } from "@/lib/utils"
import { COUNTRIES } from "@/lib/types"
const destinations = COUNTRIES.map(country => ({
  name: country,
  href: `/country/${country.toLowerCase()}`,
  description: `Explore attractions, hotels, and restaurants in ${country}.`
}));
export default function Navbar() {
  const [isOpen, setIsOpen] = React.useState(false);
  return (
    <header className="sticky top-0 z-50 w-full border-b bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/60">
      <div className="container flex h-16 items-center justify-between">
        <div className="flex items-center gap-6">
          <Link href="/" className="flex items-center gap-2">
            <Palmtree className="h-8 w-8 text-primary" />
            <span className="font-bold text-lg font-headline">Ann Tours and Travel</span>
          </Link>
          <NavigationMenu className="hidden md:flex">
            <NavigationMenuList>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link href="/">Home</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuTrigger>Destinations</NavigationMenuTrigger>
                <NavigationMenuContent>
                  <ul className="grid w-[200px] gap-1 p-2">
                     {destinations.map((destination) => (
                        <ListItem
                          key={destination.name}
                          title={destination.name}
                          href={destination.href}
                        />
                      ))}
                  </ul>
                </NavigationMenuContent>
              </NavigationMenuItem>
               <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link href="/itineraries">Itineraries</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
               <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link href="/map">Map</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                 <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link href="/about">About Us</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link href="/contact">Contact</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
            </NavigationMenuList>
          </NavigationMenu>
        </div>
        <div className="flex items-center gap-4">
          <div className="hidden md:block">
            <SearchBar />
          </div>
          <Sheet open={isOpen} onOpenChange={setIsOpen}>
            <SheetTrigger asChild className="md:hidden">
              <Button variant="ghost" size="icon">
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
                <Link href="/" className="font-medium flex items-center gap-2" onClick={() => setIsOpen(false)}>
                  <Home className="h-5 w-5" />
                  <span>Home</span>
                </Link>
                <h4 className="font-medium text-muted-foreground">Destinations</h4>
                {destinations.map(({ href, name }) => (
                  <Link key={href} href={href} className="pl-4 text-muted-foreground hover:text-foreground flex items-center gap-2" onClick={() => setIsOpen(false)}>
                    <Globe className="h-5 w-5" />
                    <span>{name}</span>
                  </Link>
                ))}
                <Link href="/itineraries" className="font-medium flex items-center gap-2" onClick={() => setIsOpen(false)}>
                  <BookCopy className="h-5 w-5" />
                  <span>Itineraries</span>
                </Link>
                <Link href="/map" className="font-medium flex items-center gap-2" onClick={() => setIsOpen(false)}>
                  <MapPin className="h-5 w-5" />
                  <span>Map</span>
                </Link>
                <Link href="/about" className="font-medium flex items-center gap-2" onClick={() => setIsOpen(false)}>
                  <Info className="h-5 w-5" />
                  <span>About Us</span>
                </Link>
                <Link href="/contact" className="font-medium flex items-center gap-2" onClick={() => setIsOpen(false)}>
                  <Mail className="h-5 w-5" />
                  <span>Contact</span>
                </Link>
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
  React.ComponentPropsWithoutRef<"a">
>(({ className, title, children, ...props }, ref) => {
  return (
    <li>
      <NavigationMenuLink asChild>
        <a
          ref={ref}
          className={cn(
            "block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground",
            className
          )}
          {...props}
        >
          <div className="text-sm font-medium leading-none">{title}</div>
          <p className="line-clamp-2 text-sm leading-snug text-muted-foreground">
            {children}
          </p>
        </a>
      </NavigationMenuLink>
    </li>
  );
});
ListItem.displayName = "ListItem"
