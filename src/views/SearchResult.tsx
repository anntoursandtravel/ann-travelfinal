"use client"
import React, { useEffect, useState } from 'react'
import { useSearchParams, useRouter } from 'next/navigation'
import { places } from '@/lib/data'
import type { Place } from '@/lib/types'
import SearchResultCard from '@/components/SearchResultCard'
import { SearchResultLoader } from '@/components/loaders'
import { Input } from '@/components/ui/input'
import { Button } from '@/components/ui/button'
import { Search } from 'lucide-react'
export default function SearchResult() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const query = searchParams.get('q') || ''
  const [term, setTerm] = useState(query)
  const [results, setResults] = useState<Place[]>([])
  const [loading, setLoading] = useState(true)
  useEffect(() => {
    setLoading(true)
    if (query) {
      const filteredResults = places.filter(place =>
        place.name.toLowerCase().includes(query.toLowerCase()) ||
        place.country.toLowerCase().includes(query.toLowerCase()) ||
        place.description.toLowerCase().includes(query.toLowerCase()) ||
        place.type.toLowerCase().includes(query.toLowerCase())
      )
      setResults(filteredResults)
    } else {
      setResults([])
    }
    setTerm(query)
    setLoading(false)
  }, [query])
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault()
    if (term.trim()) {
      router.push(`/search?q=${term.trim()}`)
    }
  }
  if (loading) {
    return <SearchResultLoader />
  }
  return (
    <div className="container mx-auto px-4 py-8">
        <form className="mb-8 flex gap-2" onSubmit={handleSubmit}>
            <div className="relative w-full">
                <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                <Input
                    type="text"
                    value={term}
                    onChange={(e) => setTerm(e.target.value)}
                    placeholder="Search again..."
                    className="pl-9"
                />
            </div>
            <Button type="submit">Search</Button>
        </form>
      <div className="mb-8">
        {query ? (
          <>
            <h1 className="font-headline text-3xl md:text-4xl font-bold">
              Search Results for &quot;{query}&quot;
            </h1>
            <p className="text-muted-foreground mt-2">{results.length} results found.</p>
          </>
        ) : (
          <h1 className="font-headline text-3xl md:text-4xl font-bold">
            Search
          </h1>
        )}
      </div>
      {results.length > 0 ? (
        <div className="space-y-4">
          {results.map(place => (
            <SearchResultCard key={place.id} place={place} />
          ))}
        </div>
      ) : (
        <div className="text-center py-16">
          <p className="text-lg text-muted-foreground">No results found.</p>
          <p className="text-sm text-muted-foreground mt-2">Try searching for a destination, attraction, hotel, or restaurant.</p>
        </div>
      )}
    </div>
  )
}
