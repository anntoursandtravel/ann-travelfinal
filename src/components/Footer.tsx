import Link from "next/link"
import { Palmtree } from "lucide-react"
import { Separator } from "./ui/separator"
export default function Footer() {
  const legalLinks = [
    "Terms of Use",
    "Privacy and Cookies Statement",
    "Cookie consent",
    "Site Map",
    "How the site works",
  ];
  return (
    <footer className="bg-secondary text-secondary-foreground">
      <div className="container mx-auto px-4 py-16">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-12 mb-12">
            <div className="col-span-1 md:col-span-2 space-y-6">
                <Link href="/" className="flex items-center gap-2 group">
                    <Palmtree className="h-10 w-10 text-primary transition-transform group-hover:scale-110" />
                    <span className="font-bold text-2xl font-headline italic">Nile Crown Safaris</span>
                </Link>
                <p className="text-muted-foreground max-w-sm leading-relaxed">
                    Crafting bespoke safari adventures and cultural journeys across the magnificent landscapes of East Africa. Join us for a journey of a lifetime.
                </p>
            </div>
            <div>
                <h4 className="font-headline font-bold text-lg mb-6">Quick Links</h4>
                <ul className="space-y-4 text-sm">
                    <li><Link href="/itineraries" className="hover:text-primary transition-colors">Our Itineraries</Link></li>
                    <li><Link href="/map" className="hover:text-primary transition-colors">Interactive Map</Link></li>
                    <li><Link href="/about" className="hover:text-primary transition-colors">About Our Story</Link></li>
                    <li><Link href="/contact" className="hover:text-primary transition-colors">Plan Your Trip</Link></li>
                </ul>
            </div>
            <div>
                <h4 className="font-headline font-bold text-lg mb-6">Contact Us</h4>
                <ul className="space-y-4 text-sm text-muted-foreground">
                    <li>123 Safari Lane, Nairobi, Kenya</li>
                    <li><a href="mailto:contact@anntoursandtravel.com" className="hover:text-primary transition-colors">contact@anntoursandtravel.com</a></li>
                    <li><a href="tel:+1234567890" className="hover:text-primary transition-colors">+1 (234) 567-890</a></li>
                </ul>
            </div>
        </div>

        <Separator className="mb-12 opacity-50" />

        <div className="flex flex-col md:flex-row justify-between items-center gap-6">
            <p className="text-sm text-muted-foreground">
                &copy; {new Date().getFullYear()} Nile Crown Safaris. All rights reserved.
            </p>
            <div className="flex flex-wrap justify-center gap-6">
                {legalLinks.map((link) => (
                    <Link key={link} href="#" className="text-xs font-medium text-muted-foreground hover:text-primary transition-colors">
                        {link}
                    </Link>
                ))}
            </div>
        </div>
      </div>
    </footer>
  )
}
