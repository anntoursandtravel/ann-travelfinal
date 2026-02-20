import type {Metadata} from 'next';
import './globals.css';
import { cn } from "@/lib/utils"
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { Toaster } from '@/components/ui/toaster';
import { MainContextProvider } from '@/context/MainContext';
import { Playfair_Display, Poppins } from 'next/font/google';
const poppins = Poppins({
  subsets: ['latin'],
  display: 'swap',
  weight: ['100', '200', '300', '400', '500', '600', '700', '800', '900'],
  variable: '--font-poppins',
});
const playfairDisplay = Playfair_Display({
  subsets: ['latin'],
  display: 'swap',
  variable: '--font-playfair-display',
});
export const metadata: Metadata = {
  metadataBase: new URL('https://anntoursandtravel.com'),
  title: {
    default: 'Ann Tours and Travel - Unforgettable African Journeys',
    template: '%s | Ann Tours and Travel',
  },
  description: 'Your ultimate guide to African safaris and adventures in Uganda, Kenya, Tanzania, Zanzibar, and Rwanda. Discover destinations, attractions, hotels, and plan your dream trip.',
  keywords: ['African safari', 'tours', 'travel', 'Uganda', 'Kenya', 'Tanzania', 'Zanzibar', 'Rwanda', 'gorilla trekking', 'wildlife', 'safari packages'],
  openGraph: {
    title: 'Ann Tours and Travel - Unforgettable African Journeys',
    description: 'Your ultimate guide to African safaris and adventures in Uganda, Kenya, Tanzania, Zanzibar, and Rwanda.',
    url: 'https://anntoursandtravel.com',
    siteName: 'Ann Tours and Travel',
    images: [
      {
        url: '/og-image.jpg',
        width: 1200,
        height: 630,
        alt: 'A collage of African safari scenes: elephants, giraffes, and stunning landscapes.',
      },
    ],
    locale: 'en_US',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Ann Tours and Travel - Unforgettable African Journeys',
    description: 'Your ultimate guide to African safaris and adventures in Uganda, Kenya, Tanzania, Zanzibar, and Rwanda.',
    images: ['/twitter-image.jpg'],
  },
};
const structuredData = {
  "@context": "https://schema.org",
  "@type": "TravelAgency",
  "name": "Ann Tours and Travel",
  "description": "Your ultimate guide to African safaris and adventures in Uganda, Kenya, Tanzania, Zanzibar, and Rwanda. Discover destinations, attractions, hotels, and plan your dream trip.",
  "url": "https://anntoursandtravel.com",
  "logo": "https://anntoursandtravel.com/logo.png",
  "telephone": "+1234567890",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "123 Safari Lane",
    "addressLocality": "Nairobi",
    "addressCountry": "KE"
  },
  "sameAs": [
    "https://www.facebook.com/anntours",
    "https://www.twitter.com/anntours",
    "https://www.instagram.com/anntours"
  ],
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://anntoursandtravel.com/search?q={search_term_string}",
    "query-input": "required name=search_term_string"
  }
};
export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <head>
        <script
            type="application/ld+json"
            dangerouslySetInnerHTML={{ __html: JSON.stringify(structuredData) }}
        />
      </head>
      <body className={cn(
        "min-h-screen bg-background font-body antialiased",
        poppins.variable,
        playfairDisplay.variable
      )}>
        <MainContextProvider>
          <div className="relative flex min-h-dvh flex-col">
            <Navbar />
            <main className="flex-1">{children}</main>
            <Footer />
          </div>
          <Toaster />
        </MainContextProvider>
      </body>
    </html>
  );
}
