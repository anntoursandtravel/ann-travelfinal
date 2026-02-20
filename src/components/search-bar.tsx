"use client"
import React, { useState, useEffect, useRef } from 'react'
import { useRouter } from 'next/navigation'
import { Search } from 'lucide-react'
import { Input } from '@/components/ui/input'
import { places } from '@/lib/data'
import type { Place } from '@/lib/types'
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover'
import { Command, CommandEmpty, CommandGroup, CommandInput, CommandItem, CommandList } from '@/components/ui/command'
import { Loader } from '@/components/loaders'
export function SearchBar({ onResultClick }: { onResultClick?: () => void }) {
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
        )
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
    if(onResultClick) onResultClick();
    router.push(`/place/${placeId}`)
  }
  return (
    <Popover open={isOpen} onOpenChange={setIsOpen}>
      <PopoverTrigger asChild>
        <div className="relative w-full md:w-64 lg:w-80">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <Input
            ref={inputRef}
            value={query}
            onChange={(e) => {
                setQuery(e.target.value);
                if (!isOpen) setIsOpen(true);
            }}
            placeholder="Search destinations..."
            className="pl-9"
          />
        </div>
      </PopoverTrigger>
      <PopoverContent className="w-[--radix-popover-trigger-width] p-0" align="start">
        <Command>
          <CommandList>
            {loading && <div className="p-4 flex items-center justify-center"><Loader className="h-5 w-5" /></div>}
            {!loading && results.length === 0 && query.length > 1 && (
              <CommandEmpty>No results found.</CommandEmpty>
            )}
            {results.length > 0 && (
              <CommandGroup>
                {results.map((place) => (
                  <CommandItem
                    key={place.id}
                    onSelect={() => handleSelect(place.id)}
                    value={place.name}
                  >
                    <span>{place.name}</span>
                    <span className="text-xs text-muted-foreground ml-auto">{place.country}</span>
                  </CommandItem>
                ))}
              </CommandGroup>
            )}
          </CommandList>
        </Command>
      </PopoverContent>
    </Popover>
  )
}
