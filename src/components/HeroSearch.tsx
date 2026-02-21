"use client"
import React, { useState, useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { Search, MapPin, Calendar, Compass, Loader2 } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { usePlaces } from '@/hooks/usePlaces'
import type { Place } from '@/lib/types'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Command, CommandEmpty, CommandGroup, CommandItem, CommandList } from '@/components/ui/command'
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue
} from "@/components/ui/select"
import Image from 'next/image'

export default function HeroSearch() {
  const [destinationQuery, setDestinationQuery] = useState('')
  const [destinationResults, setDestinationResults] = useState<Place[]>([])
  const [loading, setLoading] = useState(false)
  const [isDestOpen, setIsDestOpen] = useState(false)

  const [timing, setTiming] = useState('')
  const [experience, setExperience] = useState('')

  const router = useRouter()
  const { places, loading: placesLoading } = usePlaces()

  useEffect(() => {
    if (destinationQuery.length > 1 && !placesLoading) {
      setLoading(true)
      const timer = setTimeout(() => {
        const filtered = places.filter(place =>
          place.name.toLowerCase().includes(destinationQuery.toLowerCase()) ||
          place.country.toLowerCase().includes(destinationQuery.toLowerCase())
        ).slice(0, 5)
        setDestinationResults(filtered)
        setLoading(false)
      }, 300)
      return () => clearTimeout(timer)
    } else {
      setDestinationResults([])
    }
  }, [destinationQuery, places, placesLoading])

  const handleDestinationSelect = (placeId: string) => {
    setDestinationQuery('')
    setIsDestOpen(false)
    router.push(`/place/${placeId}`)
  }

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault()
    const params = new URLSearchParams()
    if (destinationQuery) params.append('q', destinationQuery)
    if (timing) params.append('timing', timing)
    if (experience) params.append('experience', experience)

    router.push('/search?' + params.toString())
  }

  return (
    <div className="w-full max-w-5xl bg-white/95 backdrop-blur-md rounded-2xl md:rounded-full p-2 shadow-2xl flex flex-col md:flex-row items-stretch gap-1 md:gap-0 border border-white/20 animate-zoom-in">

      {/* Destination Field */}
      <div className="flex-[1.5] relative group">
        <Popover open={isDestOpen && destinationQuery.length > 1} onOpenChange={setIsDestOpen}>
          <PopoverTrigger asChild>
            <div className="flex items-center gap-3 px-6 py-4 md:py-3 cursor-pointer hover:bg-black/5 rounded-t-2xl md:rounded-l-full md:rounded-t-none transition-colors border-b md:border-b-0 md:border-r border-muted h-full">
              <MapPin className="h-5 w-5 text-primary shrink-0" />
              <div className="flex flex-col items-start overflow-hidden flex-grow">
                <span className="text-[10px] uppercase tracking-widest font-bold text-muted-foreground">Where to?</span>
                <input
                  type="text"
                  value={destinationQuery}
                  onChange={(e) => {
                    setDestinationQuery(e.target.value)
                    if (!isDestOpen) setIsDestOpen(true)
                  }}
                  placeholder="Destinations..."
                  className="bg-transparent border-none focus:ring-0 p-0 text-foreground font-semibold placeholder:text-muted-foreground/50 w-full outline-none"
                />
              </div>
            </div>
          </PopoverTrigger>
          <PopoverContent
            className="w-[var(--radix-popover-trigger-width)] min-w-[300px] p-0 bg-white/95 backdrop-blur-md border-none shadow-2xl rounded-2xl overflow-hidden mt-2"
            align="start"
            onOpenAutoFocus={(e) => e.preventDefault()}
          >
            <Command>
              <CommandList className="max-h-[300px]">
                {(loading || (placesLoading && destinationQuery.length > 1)) && (
                  <div className="p-6 flex items-center justify-center">
                    <Loader2 className="h-6 w-6 text-primary animate-spin" />
                  </div>
                )}
                {!loading && !placesLoading && destinationResults.length === 0 && destinationQuery.length > 1 && (
                  <CommandEmpty className="p-6 text-center text-muted-foreground">No matches found.</CommandEmpty>
                )}
                {destinationResults.length > 0 && (
                  <CommandGroup heading={<span className="px-2 text-[10px] font-bold text-muted-foreground uppercase tracking-widest">Suggestions</span>}>
                    {destinationResults.map((place) => (
                      <CommandItem
                        key={place.id}
                        onSelect={() => handleDestinationSelect(place.id)}
                        className="flex items-center gap-3 p-3 cursor-pointer hover:bg-primary/10 transition-colors"
                      >
                        <div className="w-10 h-10 rounded-lg relative overflow-hidden shrink-0 shadow-sm">
                          <Image src={place.images[0]} alt={place.name} fill className="object-cover" />
                        </div>
                        <div className="flex flex-col overflow-hidden">
                          <span className="font-bold text-sm truncate text-foreground">{place.name}</span>
                          <span className="text-[10px] text-muted-foreground uppercase font-medium">{place.type} • {place.country}</span>
                        </div>
                      </CommandItem>
                    ))}
                  </CommandGroup>
                )}
              </CommandList>
            </Command>
          </PopoverContent>
        </Popover>
      </div>

      {/* Timing Field */}
      <div className="flex-1 flex items-center gap-3 px-6 py-4 md:py-3 hover:bg-black/5 transition-colors border-b md:border-b-0 md:border-r border-muted">
        <Calendar className="h-5 w-5 text-primary shrink-0" />
        <div className="flex flex-col items-start w-full">
          <span className="text-[10px] uppercase tracking-widest font-bold text-muted-foreground">When?</span>
          <Select value={timing} onValueChange={setTiming}>
            <SelectTrigger className="border-none p-0 h-auto bg-transparent focus:ring-0 focus:ring-offset-0 shadow-none font-semibold text-foreground [&>svg]:hidden w-full text-left">
              <SelectValue placeholder="Timing" />
            </SelectTrigger>
            <SelectContent className="rounded-2xl border-none shadow-2xl bg-white/95 backdrop-blur-md">
              <SelectItem value="dry" className="rounded-lg">Dry Season (Jun-Oct)</SelectItem>
              <SelectItem value="green" className="rounded-lg">Green Season (Nov-May)</SelectItem>
              <SelectItem value="migration" className="rounded-lg">Migration (Jul-Sep)</SelectItem>
              <SelectItem value="any" className="rounded-lg">Anytime</SelectItem>
            </SelectContent>
          </Select>
        </div>
      </div>

      {/* Experience Field */}
      <div className="flex-1 flex items-center gap-3 px-6 py-4 md:py-3 hover:bg-black/5 transition-colors">
        <Compass className="h-5 w-5 text-primary shrink-0" />
        <div className="flex flex-col items-start w-full">
          <span className="text-[10px] uppercase tracking-widest font-bold text-muted-foreground">Experience</span>
          <Select value={experience} onValueChange={setExperience}>
            <SelectTrigger className="border-none p-0 h-auto bg-transparent focus:ring-0 focus:ring-offset-0 shadow-none font-semibold text-foreground [&>svg]:hidden w-full text-left">
              <SelectValue placeholder="Activities" />
            </SelectTrigger>
            <SelectContent className="rounded-2xl border-none shadow-2xl bg-white/95 backdrop-blur-md">
              <SelectItem value="safari" className="rounded-lg">Classic Safari</SelectItem>
              <SelectItem value="gorilla" className="rounded-lg">Gorilla Trekking</SelectItem>
              <SelectItem value="beach" className="rounded-lg">Zanzibar Beach</SelectItem>
              <SelectItem value="luxury" className="rounded-lg">Luxury Stays</SelectItem>
              <SelectItem value="cultural" className="rounded-lg">Cultural Tours</SelectItem>
            </SelectContent>
          </Select>
        </div>
      </div>

      {/* Search Button */}
      <div className="p-1 md:pl-4">
        <Button
          onClick={handleSearch}
          size="lg"
          className="w-full md:w-auto h-full px-8 py-4 md:py-0 rounded-xl md:rounded-full font-bold text-base transition-all hover:scale-[1.02] active:scale-95 shadow-lg flex items-center justify-center gap-2 bg-primary hover:bg-primary/90 text-primary-foreground"
        >
          <Search className="h-4 w-4" />
          <span>Explore</span>
        </Button>
      </div>
    </div>
  )
}
