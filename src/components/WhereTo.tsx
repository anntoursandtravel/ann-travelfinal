import Link from 'next/link';
import Image from 'next/image';
import { COUNTRIES } from '@/lib/types';

const destinationImages: Record<string, {img: string}> = {
  Uganda: { img: 'https://images.unsplash.com/photo-1594555249959-8c072a2772e6?q=80&w=2070&auto=format&fit=crop' },
  Kenya: { img: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/4e/5d/93/kenya.jpg?w=900&h=500&s=1' },
  Tanzania: { img: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/01/a1/50/14/tanzania-safari.jpg?w=900&h=500&s=1' },
  Zanzibar: { img: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/ff/64/zanzibar-island.jpg?w=900&h=500&s=1' },
  Rwanda: { img: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/97/00/5f/rwanda.jpg?w=900&h=500&s=1' },
};

export default function WhereTo() {
  return (
    <section className="w-full py-16 lg:py-24 bg-secondary">
      <div className="container mx-auto px-4">
        <div className="text-center mb-12">
          <h2 className="font-headline text-3xl md:text-5xl font-bold mb-4">Discover East Africa</h2>
          <p className="mt-2 text-lg text-muted-foreground max-w-2xl mx-auto">From the misty volcanic peaks of Rwanda to the endless plains of the Serengeti, embark on a journey through the heart of the continent.</p>
        </div>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-6">
          {COUNTRIES.map((country) => (
            <Link key={country} href={`/country/${country.toLowerCase()}`} className="group relative h-[400px] lg:h-[500px] transition-all duration-500">
              <div className="absolute inset-0 rounded-3xl overflow-hidden shadow-2xl">
                <Image
                  src={destinationImages[country].img}
                  alt={`Explore ${country}`}
                  fill
                  className="object-cover transition-transform duration-700 group-hover:scale-110"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/90 via-black/20 to-transparent transition-all duration-500 group-hover:from-black/80" />
                <div className="absolute inset-0 flex flex-col justify-end p-8">
                  <h3 className="font-headline text-2xl md:text-3xl font-bold text-white mb-2">{country}</h3>
                  <div className="h-0.5 w-12 bg-primary transform origin-left transition-transform duration-500 scale-x-0 group-hover:scale-x-100 mb-4" />
                  <span className="text-xs uppercase tracking-[0.2em] text-white/70 font-bold opacity-0 group-hover:opacity-100 transition-all duration-500 translate-y-2 group-hover:translate-y-0">
                    Explore Destination
                  </span>
                </div>
              </div>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
}
