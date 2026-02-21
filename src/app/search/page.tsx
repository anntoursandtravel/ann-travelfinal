import { Suspense } from 'react'
import { SearchResultLoader } from '@/components/loaders'
import SearchResult from '@/views/SearchResult'
import { getPlaces } from '@/lib/api'

export default async function SearchPage() {
    const allPlaces = await getPlaces();
    return (
        <Suspense fallback={<SearchResultLoader />}>
            <SearchResult allPlaces={allPlaces} />
        </Suspense>
    )
}
