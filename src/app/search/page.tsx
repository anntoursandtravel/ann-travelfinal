"use client"
import { Suspense } from 'react'
import { SearchResultLoader } from '@/components/loaders'
import SearchResult from '@/views/SearchResult'
export default function SearchPage() {
    return (
        <Suspense fallback={<SearchResultLoader />}>
            <SearchResult />
        </Suspense>
    )
}
