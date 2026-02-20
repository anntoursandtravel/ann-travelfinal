import { places } from "@/lib/data"
import { COUNTRIES, COUNTRY_ISO_MAP, Place } from "@/lib/types"
import { notFound } from "next/navigation"
import CountryDetails from "@/views/CountryDetails"
import type { Metadata } from "next";

type Props = {
  params: Promise<{ name: string }>
}

export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const awaitedParams = await params;
  const countryName = COUNTRIES.find(c => c.toLowerCase() === awaitedParams.name);

  if (!countryName) {
    return {
      title: 'Country Not Found'
    }
  }

  return {
    title: `Explore ${countryName}`,
    description: `Discover the best attractions, hotels, and restaurants in ${countryName}. Plan your perfect trip with Ann Tours and Travel.`,
    keywords: [`${countryName} travel`, `things to do in ${countryName}`, `hotels in ${countryName}`, `restaurants in ${countryName}`, 'safari', 'tourism'],
  }
}

export async function generateStaticParams() {
  return COUNTRIES.map((country) => ({
    name: country.toLowerCase(),
  }))
}

export default async function CountryPage({ params }: { params: Promise<{ name: string }> }) {
  const awaitedParams = await params;
  const countryName = COUNTRIES.find(c => c.toLowerCase() === awaitedParams.name);

  if (!countryName) {
    notFound()
  }

  const countryPlaces = places.filter(p => p.country.toLowerCase() === awaitedParams.name)

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'WebPage',
    name: `Explore ${countryName}`,
    description: `Discover the best attractions, hotels, and restaurants in ${countryName}.`,
    url: `https://anntours.com/country/${awaitedParams.name}`,
    address: {
      '@type': 'PostalAddress',
      addressCountry: COUNTRY_ISO_MAP[countryName as Place['country']]
    }
  };

  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />
      <CountryDetails country={countryName} places={countryPlaces} />
    </>
  );
}
