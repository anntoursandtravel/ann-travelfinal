import { Skeleton } from "@/components/ui/skeleton"
const PlaceDetailsLoader = () => {
  return (
    <div className="container mx-auto px-4 py-16 space-y-3">
      <Skeleton className="h-8 w-10/12 md:w-8/12" />
      <div className="w-full md:w-5/12 grid grid-cols-6 gap-2">
        <Skeleton className="h-3 w-full col-span-2" />
        <Skeleton className="h-3 w-full hidden md:block col-span-2" />
        <Skeleton className="h-3 w-full hidden md:block col-span-2" />
      </div>
      <div className="w-full md:w-11/12 grid grid-cols-12 gap-2">
        <Skeleton className="h-3 w-full col-span-6" />
        <Skeleton className="h-3 w-full col-span-2" />
        <Skeleton className="h-3 w-full col-span-2" />
        <Skeleton className="h-3 w-full col-span-2" />
      </div>
      <Skeleton className="h-[300px] w-full" />
      <div className="grid grid-cols-3 md:hidden gap-3">
        <Skeleton className="h-[100px] col-span-1" />
        <Skeleton className="h-[100px] col-span-1" />
        <Skeleton className="h-[100px] col-span-1" />
      </div>
      <Skeleton className="h-4 w-full md:w-4/12" />
      <Skeleton className="h-3 w-full" />
      <Skeleton className="h-3 w-full" />
      <Skeleton className="h-3 w-11/12" />
      <Skeleton className="h-3 w-full" />
      <Skeleton className="h-3 w-10/12" />
      <div className="hidden md:grid grid-cols-3 gap-3">
        <Skeleton className="h-[300px] col-span-1" />
        <Skeleton className="h-[300px] col-span-1" />
        <Skeleton className="h-[300px] col-span-1" />
      </div>
    </div>
  )
}
export default PlaceDetailsLoader
