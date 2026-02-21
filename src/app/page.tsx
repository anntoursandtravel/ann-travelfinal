import Home from '@/views/Home';
import { getItineraries } from '@/lib/api';

export default async function Page() {
  const itineraries = await getItineraries();
  return <Home itineraries={itineraries} />;
}
