import { Skeleton } from "@/components/ui/skeleton"
const PlaceListLoader = ({ count = 4 }: { count?: number }) => {
    return (
        <div className="container mx-auto px-4 py-8">
            <div className="space-y-4">
                {Array.from({ length: count }).map((_, i) => (
                    <div key={i} className="grid grid-cols-12 items-start gap-4 p-4 border rounded-lg shadow-sm">
                        <Skeleton className="col-span-12 md:col-span-4 h-[180px] rounded-md" />
                        <div className="col-span-12 md:col-span-8 space-y-3">
                            <Skeleton className="h-6 w-3/4" />
                            <Skeleton className="h-4 w-1/2" />
                            <div className="flex items-center space-x-3 pt-2">
                                <Skeleton className="h-4 w-1/4" />
                                <Skeleton className="h-4 w-1/4" />
                            </div>
                            <div className="space-y-2 pt-2">
                                <Skeleton className="h-3 w-full" />
                                <Skeleton className="h-3 w-5/6" />
                            </div>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}
export default PlaceListLoader;
