import type { Metadata } from 'next';
import './globals.css';
import { cn } from "@/lib/utils"
import TripAdvisorNavbar from '@/components/TripAdvisorNavbar';
import Footer from '@/components/Footer';
import { Toaster } from '@/components/ui/toaster';
import { MainContextProvider } from '@/context/MainContext';

export const metadata: Metadata = {
  metadataBase: new URL('https://anntoursandtravel.com'),
  title: {
    default: 'Nile Crown - Hotels, Things to Do & Restaurants',
    template: '%s | Nile Crown',
  },
  description: 'Plan your perfect trip with Nile Crown. Read reviews, compare prices, and book the best hotels and things to do.',
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className="min-h-screen bg-white font-sans antialiased text-black">
        <MainContextProvider>
          <div className="relative flex min-h-dvh flex-col">
            <TripAdvisorNavbar />
            <main className="flex-1">{children}</main>
            <Footer />
          </div>
          <Toaster />
        </MainContextProvider>
      </body>
    </html>
  );
}
