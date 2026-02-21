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
import { createClient } from "@/lib/supabase/client"
import { User } from "@supabase/supabase-js"

const destinationImages: Record<string, string> = {
  Uganda: "https://images.unsplash.com/photo-1511210352317-062e10741634?q=80&w=2070&auto=format&fit=crop",
  Kenya: "https://images.unsplash.com/photo-1516426122078-c23e76319801?q=80&w=2068&auto=format&fit=crop",
  Tanzania: "https://images.unsplash.com/photo-1516026672322-bc52d61a55d5?q=80&w=1974&auto=format&fit=crop",
  Zanzibar: "https://images.unsplash.com/photo-1586861635167-e5223aadc9fe?q=80&w=1974&auto=format&fit=crop",
  Rwanda: "https://images.unsplash.com/photo-1547407139-3c921a66005c?q=80&w=1974&auto=format&fit=crop",
}

const destinations = [
  { name: "Uganda", href: "/country/Uganda" },
  { name: "Kenya", href: "/country/Kenya" },
  { name: "Tanzania", href: "/country/Tanzania" },
  { name: "Zanzibar", href: "/country/Zanzibar" },
  { name: "Rwanda", href: "/country/Rwanda" },
]

const Navbar = () => {
  const [isScrolled, setIsScrolled] = useState(false)
  const [isOpen, setIsOpen] = useState(false)
  const [user, setUser] = useState<User | null>(null)
  const pathname = usePathname()
  const supabase = createClient()

  useEffect(() => {
    const getUser = async () => {
      const { data: { user } } = await supabase.auth.getUser()
      setUser(user)
    }
    getUser()

    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      setUser(session?.user ?? null)
    })

    return () => subscription.unsubscribe()
  }, [supabase])

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 20)
    }
    window.addEventListener("scroll", handleScroll)
    return () => window.removeEventListener("scroll", handleScroll)
  }, [])

  return (
    <header
      className={cn(
        "fixed top-0 left-0 right-0 z-50 transition-all duration-500",
        isScrolled
          ? "bg-white/90 backdrop-blur-md py-3 shadow-lg border-b border-black/5"
          : "bg-transparent py-6"
      )}
    >
      <div className="container mx-auto px-6 flex items-center justify-between">
        <div className="flex items-center gap-12">
          <Link href="/" className="flex items-center gap-2 group">
            <div className="h-10 w-10 rounded-full bg-primary flex items-center justify-center shadow-lg group-hover:rotate-12 transition-transform duration-300">
              <Palmtree className="h-6 w-6 text-white" />
            </div>
            <span
              className={cn(
                "text-2xl font-bold font-headline tracking-tight transition-colors duration-300",
                !isScrolled ? "text-white" : "text-foreground"
              )}
            >
              Ann Tours
            </span>
          </Link>

          <NavigationMenu className="hidden md:flex">
            <NavigationMenuList className="gap-2">
              <NavigationMenuItem>
                <NavigationMenuTrigger className={cn(
                  "font-bold text-[13px] tracking-widest uppercase transition-all duration-200",
                  !isScrolled
                    ? "bg-transparent hover:bg-white/10 text-white hover:text-white data-[state=open]:bg-white/10"
                    : "hover:text-primary"
                )}>
                  Destinations
                </NavigationMenuTrigger>
                <NavigationMenuContent>
                  <ul className="grid w-[600px] gap-3 p-6 grid-cols-2 bg-white rounded-2xl shadow-2xl border border-black/5">
                    {destinations.map((dest) => (
                      <ListItem
                        key={dest.name}
                        title={dest.name}
                        href={dest.href}
                        image={destinationImages[dest.name]}
                      >
                        Explore the beauty and wildlife of {dest.name}.
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

          {user ? (
            <div className="hidden xl:flex items-center gap-4">
              <span className={cn("font-bold text-sm", !isScrolled ? "text-white" : "text-foreground")}>
                Hi, {user.user_metadata.full_name || user.email?.split('@')[0]}
              </span>
              <Button
                onClick={() => supabase.auth.signOut()}
                variant="outline"
                size="sm"
                className={cn(
                  "rounded-full font-bold h-9",
                  !isScrolled ? "text-white border-white hover:bg-white/10" : "border-primary text-primary hover:bg-primary/5"
                )}
              >
                Sign Out
              </Button>
            </div>
          ) : (
            <Button asChild variant="ghost" className={cn(
              "hidden xl:flex font-bold rounded-full",
              !isScrolled ? "text-white hover:bg-white/10" : ""
            )}>
              <Link href="/login">Sign In</Link>
            </Button>
          )}

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
                    Ann Tours
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
                    {!user && (
                      <Link href="/login" className="group font-bold text-lg flex items-center gap-4 p-3 rounded-xl hover:bg-secondary transition-all" onClick={() => setIsOpen(false)}>
                        <div className="h-10 w-10 rounded-full bg-primary/10 flex items-center justify-center group-hover:bg-primary/20 transition-colors">
                          <svg className="h-5 w-5 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1" /></svg>
                        </div>
                        <span>Sign In</span>
                      </Link>
                    )}
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
                  {user && (
                    <Button
                      onClick={() => {
                        supabase.auth.signOut()
                        setIsOpen(false)
                      }}
                      variant="ghost"
                      className="w-full py-7 rounded-full text-base font-bold text-red-500 hover:text-red-600 hover:bg-red-50"
                    >
                      Sign Out
                    </Button>
                  )}
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
export default Navbar
