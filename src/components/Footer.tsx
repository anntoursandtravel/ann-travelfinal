import Link from "next/link"
import { Palmtree } from "lucide-react"
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
      <div className="container mx-auto px-4 py-8">
        <div className="grid grid-cols-1">
          <div className="space-y-4">
            <div className="flex items-start gap-4">
              <Link href="/" aria-label="Go to homepage">
                <Palmtree className="h-10 w-10 text-primary" />
              </Link>
              <div>
                <p className="text-sm">
                  &copy; {new Date().getFullYear()} Ann Tours and Travel. All rights reserved.
                </p>
                <div className="flex flex-wrap gap-x-4 gap-y-1 mt-1">
                  {legalLinks.map((link) => (
                    <Link key={link} href="#" className="text-xs font-medium text-muted-foreground hover:text-primary hover:underline">
                      {link}
                    </Link>
                  ))}
                </div>
              </div>
            </div>
            <div className="space-y-3 text-xs text-muted-foreground">
              <p>
                This is the version of our website addressed to speakers of English in the United States. If you are a resident of another country or region, please select the appropriate version of Ann Tours and Travel for your country or region in the drop-down menu.
              </p>
              <p>
                Ann Tours and Travel makes no guarantees for availability of prices advertised on our sites and applications. Listed prices may require a stay of a particular length or have blackout dates, qualifications or other applicable restrictions. Ann Tours and Travel is not responsible for any content on external web sites that are not owned or operated by Ann Tours and Travel. Indicative hotel prices displayed on our “Explore” pages are estimates extrapolated from historic pricing data.
              </p>
              <p>
                Ann Tours and Travel is not a booking agent or tour operator. When you book with one of our partners, please be sure to check their site for a full disclosure of all applicable fees.
              </p>
            </div>
          </div>
        </div>
      </div>
    </footer>
  )
}
