import { getSavedPlaces } from '@/app/actions';
import { TripAdvisorCard } from '@/components/TripAdvisorCard';
import { Place } from '@/lib/types';
import Link from 'next/link';
import { Button } from '@/components/ui/button';

export default async function TripsPage() {
  const savedPlaces = await getSavedPlaces();

  return (
    <div className="container mx-auto px-4 py-8">
      <div className="flex justify-between items-center mb-8">
        <h1 className="text-3xl font-bold font-sans text-black">My Trips</h1>
      </div>

      {savedPlaces.length === 0 ? (
        <div className="text-center py-20 bg-gray-50 rounded-xl">
           <h2 className="text-xl font-bold mb-4 text-black">No trips saved yet</h2>
           <p className="mb-6 text-gray-600">Heart items to save them here.</p>
           <Button asChild className="rounded-full bg-black text-white font-bold hover:bg-gray-800">
              <Link href="/">Start exploring</Link>
           </Button>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {savedPlaces.map((place: any) => (
            <TripAdvisorCard key={place.id} place={place as Place} />
          ))}
        </div>
      )}
    </div>
  );
}
