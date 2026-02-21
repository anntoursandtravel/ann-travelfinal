import Link from 'next/link';
import Image from 'next/image';

const categories = [
  {
    title: 'Hotels',
    href: '/hotels',
    image: 'https://images.unsplash.com/photo-1566073771259-6a8506099945?q=80&w=2070&auto=format&fit=crop'
  },
  {
    title: 'Things to Do',
    href: '/attractions',
    image: 'https://images.unsplash.com/photo-1533929736472-594e69d3d9ce?q=80&w=2070&auto=format&fit=crop'
  },
  {
    title: 'Restaurants',
    href: '/restaurants',
    image: 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=2070&auto=format&fit=crop'
  },
  {
    title: 'Itineraries',
    href: '/itineraries',
    image: 'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?q=80&w=2021&auto=format&fit=crop'
  }
];

export default function WaysToTour() {
  return (
    <section className="container mx-auto px-4 py-12">
      <h2 className="font-headline text-2xl md:text-3xl font-bold mb-2">Ways to tour East Africa</h2>
      <p className="text-muted-foreground mb-8">Book these experiences for a close-up look at the region.</p>

      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 md:gap-6">
        {categories.map((cat) => (
          <Link key={cat.title} href={cat.href} className="group text-center">
            <div className="relative aspect-square w-full rounded-2xl overflow-hidden mb-3 border-2 border-transparent group-hover:border-primary transition-all shadow-sm group-hover:shadow-md">
               <Image
                 src={cat.image}
                 alt={cat.title}
                 fill
                 className="object-cover transition-transform duration-500 group-hover:scale-105"
               />
            </div>
            <span className="font-bold text-lg group-hover:underline decoration-2 underline-offset-4 decoration-primary">{cat.title}</span>
          </Link>
        ))}
      </div>
    </section>
  );
}
