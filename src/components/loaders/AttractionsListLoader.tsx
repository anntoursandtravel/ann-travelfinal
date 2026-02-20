import PlaceCardLoader from "./PlaceCardLoader"
const AttractionsListLoader = ({ count = 8 }: { count?: number }) => {
    return (
        <div className="container mx-auto px-4 py-16">
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
                {Array.from({ length: count }).map((_, i) => (
                    <PlaceCardLoader key={i} />
                ))}
            </div>
        </div>
    )
}
export default AttractionsListLoader;
