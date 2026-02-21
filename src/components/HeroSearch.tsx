"use client"
import React, { useState, useEffect, useRef } from 'react'
import { useRouter } from 'next/navigation'
import { Search } from 'lucide-react'
import { Input } from '@/components/ui/input'
import { Button } from '@/components/ui/button'
import { places } from '@/lib/data'
import type { Place } from '@/lib/types'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Command, CommandEmpty, CommandGroup, CommandInput, CommandItem, CommandList } from '@/components/ui/command'
import { Loader } from '@/components/loaders'
import Image from 'next/image'

export default function HeroSearch() {
  const [query, setQuery] = useState('')
  const [results, setResults] = useState<Place[]>([])
  const [loading, setLoading] = useState(false)
  const [isOpen, setIsOpen] = useState(false);
  const router = useRouter()
  const inputRef = useRef<HTMLInputElement>(null)

  useEffect(() => {
    if (query.length > 1) {
      setLoading(true)
      const timer = setTimeout(() => {
        const filteredResults = places.filter(place =>
          place.name.toLowerCase().includes(query.toLowerCase()) ||
          place.country.toLowerCase().includes(query.toLowerCase()) ||
          place.description.toLowerCase().includes(query.toLowerCase())
        ).slice(0, 5) // Limit to 5 results for hero
        setResults(filteredResults)
        setLoading(false)
      }, 300)
      return () => clearTimeout(timer)
    } else {
      setResults([])
    }
  }, [query])

  const handleSelect = (placeId: string) => {
    setQuery('')
    setIsOpen(false)
    router.push(`/place/${placeId}`)
  }

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault()
    if (query.trim()) {
      setIsOpen(false)
      router.push(`/search?q=${query.trim()}`)
    }
  }

  return (
    <div className="w-full max-w-3xl relative animate-zoom-in">
        <form onSubmit={handleSearch} className="w-full bg-white/95 backdrop-blur-sm rounded-full p-2 md:p-4 shadow-2xl flex items-center gap-2 md:gap-4">
            <Search className="h-6 w-6 text-muted-foreground ml-4 hidden md:block" />
            <div className="relative flex-grow">
                <Popover open={isOpen && query.length > 1} onOpenChange={setIsOpen}>
                    <PopoverTrigger asChild>
                        <div className="w-full">
                            <Input
                                ref={inputRef}
                                type="search"
                                value={query}
                                onChange={(e) => {
                                    setQuery(e.target.value);
                                    if (!isOpen) setIsOpen(true);
                                }}
                                placeholder="Search destinations, hotels, or attractions..."
                                className="bg-transparent border-none focus-visible:ring-0 text-foreground h-12 md:h-14 text-base md:text-lg w-full placeholder:text-muted-foreground/70 shadow-none"
                            />
                        </div>
                    </PopoverTrigger>
                    <PopoverContent
                        className="w-[var(--radix-popover-trigger-width)] p-0 mt-2 bg-white/95 backdrop-blur-md border-none shadow-2xl rounded-2xl overflow-hidden"
                        align="start"
                        onOpenAutoFocus={(e) => e.preventDefault()}
                    >
                        <Command>
                            <CommandList className="max-h-[300px]">
                                {loading && (
                                    <div className="p-6 flex items-center justify-center">
                                        <Loader className="h-6 w-6 text-primary animate-spin" />
                                    </div>
                                )}
                                {!loading && results.length === 0 && query.length > 1 && (
                                    <CommandEmpty className="p-6 text-center text-muted-foreground">
                                        No matches found. Press enter to search all records.
                                    </CommandEmpty>
                                )}
                                {results.length > 0 && (
                                    <CommandGroup heading={<span className="px-2 text-xs font-semibold text-muted-foreground uppercase tracking-wider">Top Suggestions</span>}>
                                        {results.map((place) => (
                                            <CommandItem
                                                key={place.id}
                                                onSelect={() => handleSelect(place.id)}
                                                className="flex items-center gap-3 p-3 cursor-pointer hover:bg-primary/10 aria-selected:bg-primary/10 transition-colors"
                                            >
                                                <div className="w-10 h-10 rounded-lg overflow-hidden shrink-0 relative">
                                                    <Image src={place.images[0]} alt={place.name} fill className="object-cover" />
                                                </div>
                                                <div className="flex flex-col">
                                                    <span className="font-bold text-foreground">{place.name}</span>
                                                    <span className="text-xs text-muted-foreground">{place.type} • {place.country}</span>
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
            <Button type="submit" size="lg" className="rounded-full font-bold px-6 md:px-10 h-12 md:h-14 text-base md:text-lg shrink-0 shadow-lg hover:shadow-xl transition-all duration-300">
                Search
            </Button>
        </form>
    </div>
  )
}
