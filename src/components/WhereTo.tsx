import Link from 'next/link';
import Image from 'next/image';
import { COUNTRIES } from '@/lib/types';
import { Card } from '@/components/ui/card';

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
          <h2 className="font-headline text-3xl md:text-4xl font-bold">Explore Our Destinations</h2>
          <p className="mt-2 text-lg text-muted-foreground">Select a country to start your adventure.</p>
        </div>
        <div className="max-w-md mx-auto grid grid-cols-2 gap-2">
          {COUNTRIES.map((country) => (
            <Link key={country} href={`/country/${country.toLowerCase()}`} className="group">
              <Card className="relative overflow-hidden rounded-lg shadow-lg h-32 transform transition-transform duration-300 hover:-translate-y-1">
                <Image
                  src={destinationImages[country].img}
                  alt={`Explore ${country}`}
                  fill
                  className="object-cover transition-transform duration-500 group-hover:scale-110"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/70 to-transparent" />
                <div className="absolute bottom-0 left-0 p-2 w-full">
                  <h3 className="font-headline text-sm font-bold text-white">{country}</h3>
                </div>
              </Card>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
}
