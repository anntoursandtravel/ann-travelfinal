import { Skeleton } from "@/components/ui/skeleton";
const SearchResultLoader = () => {
    return ( 
        <div className="container mx-auto space-y-3 p-4">
            <Skeleton className="h-52 w-full" />
            <Skeleton className="h-52 w-full" />
            <Skeleton className="h-52 hidden md:block w-full" />
        </div>
     );
}
export default SearchResultLoader;
