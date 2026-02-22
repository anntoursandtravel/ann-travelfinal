import ItinerariesList from "@/views/ItinerariesList";
import type { Metadata } from "next";
import { getItineraries } from "@/lib/api";

export const metadata: Metadata = {
  title: 'Curated African Safari Itineraries',
  description: 'Explore expertly crafted safari itineraries for Uganda, Kenya, Tanzania, Zanzibar, and Rwanda. Find your perfect adventure with Nile Crown Safaris.',
  keywords: ['safari itineraries', 'Africa travel packages', 'Uganda safari', 'Kenya safari', 'Tanzania safari', 'Rwanda gorilla trekking', 'Zanzibar holidays'],
};

export default async function ItinerariesPage() {
    const itineraries = await getItineraries();

    const structuredData = {
      "@context": "https://schema.org",
      "@type": "CollectionPage",
      "name": "Curated African Safari Itineraries",
      "description": "Explore expertly crafted safari itineraries for Uganda, Kenya, Tanzania, Zanzibar, and Rwanda. Find your perfect adventure with Nile Crown Safaris.",
      "url": "https://anntoursandtravel.com/itineraries",
      "mainEntity": {
        "@type": "ItemList",
        "itemListElement": itineraries.map((itinerary, index) => ({
          "@type": "ListItem",
          "position": index + 1,
          "item": {
            "@type": "Product",
            "name": itinerary.title,
            "description": itinerary.description,
            "image": itinerary.image,
            "url": `https://anntoursandtravel.com/itineraries#${itinerary.id}`,
            "brand": {
              "@type": "Brand",
              "name": "Nile Crown Safaris"
            },
            "offers": {
              "@type": "Offer",
              "priceCurrency": "USD",
              "price": "0", // Price not available, so setting to 0
              "availability": "https://schema.org/InStock"
            }
          }
        }))
      }
    };

    return (
      <>
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
        />
        <ItinerariesList itineraries={itineraries} />
      </>
    );
}
