import { Card, CardContent } from "@/components/ui/card"
import { Skeleton } from "@/components/ui/skeleton"
const PlaceCardLoader = () => {
    return (
        <Card>
            <Skeleton className="h-[200px] w-full" />
            <CardContent className="space-y-3 pt-4">
                <Skeleton className="h-4 w-full" />
                <Skeleton className="h-3 w-5/12" />
            </CardContent>
        </Card>
    )
}
export default PlaceCardLoader;
