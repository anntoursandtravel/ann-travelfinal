import { getPlaces, getPlaceById } from "@/lib/api"
import { COUNTRY_ISO_MAP } from "@/lib/types"
import { notFound } from "next/navigation"
import PlaceDetails from "@/views/PlaceDetails"
import type { Metadata } from "next";

type Props = {
  params: Promise<{ id: string }>
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const awaitedParams = await params;
  const place = await getPlaceById(awaitedParams.id)

  if (!place) {
    return {
      title: 'Place Not Found'
    }
  }

  const keywords = [place.name, place.type, place.country, 'Nile Crown Safaris', 'African safari'];
  if (place.type === 'Hotel') keywords.push('accommodation', 'booking');
  if (place.type === 'Restaurant') keywords.push('dining', 'food');
  if (place.type === 'Attraction') keywords.push('tourism', 'sightseeing');

  return {
    title: `${place.name} | ${place.country}`,
    description: `Explore ${place.name}, a premier ${place.type.toLowerCase()} in ${place.country}. Get details, see photos, and plan your visit with Nile Crown Safaris. ${place.description}`,
    keywords: keywords,
    openGraph: {
      title: `${place.name} | Nile Crown Safaris`,
      description: `Explore ${place.name}, a premier ${place.type.toLowerCase()} in ${place.country}.`,
      url: `/place/${awaitedParams.id}`,
      images: [
        {
          url: place.images[0],
          width: 800,
          height: 600,
          alt: `A stunning view of ${place.name}`,
        },
      ],
      type: 'article',
      siteName: 'Nile Crown Safaris',
    },
    twitter: {
      card: 'summary_large_image',
      title: `${place.name} | Nile Crown Safaris`,
      description: `Explore ${place.name}, a premier ${place.type.toLowerCase()} in ${place.country}.`,
      images: [place.images[0]],
    }
  }
}

export async function generateStaticParams() {
  const places = await getPlaces();
  return places.map((place) => ({
    id: place.id,
  }))
}

export default async function PlaceDetailsPage({ params }: { params: Promise<{ id: string }> }) {
  const awaitedParams = await params;
  const place = await getPlaceById(awaitedParams.id)

  if (!place) {
    notFound()
  }

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': place.type === 'Hotel' ? 'Hotel' : place.type === 'Restaurant' ? 'Restaurant' : 'TouristAttraction',
    name: place.name,
    description: place.description,
    image: place.images[0],
    address: {
      '@type': 'PostalAddress',
      addressCountry: COUNTRY_ISO_MAP[place.country]
    },
    geo: {
      '@type': 'GeoCoordinates',
      latitude: place.location.lat,
      longitude: place.location.lng
    },
    telephone: place.contact.phone,
    url: place.contact.website,
    aggregateRating: {
      '@type': 'AggregateRating',
      ratingValue: place.rating,
      bestRating: '5',
      worstRating: '1'
    }
  };

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <PlaceDetails place={place} />
    </>
  );
}
