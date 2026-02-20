import Image from "next/image"
export default function AboutPage() {
  return (
    <div className="bg-background">
      <div className="container mx-auto px-4 py-16 lg:py-24">
        <div className="text-center mb-12">
          <h1 className="font-headline text-4xl md:text-5xl font-bold tracking-tight">About Ann Tours and Travel</h1>
          <p className="mt-4 text-lg text-muted-foreground max-w-3xl mx-auto">
            Your trusted partner in crafting unforgettable African journeys.
          </p>
        </div>
        <div className="grid md:grid-cols-2 gap-12 items-center">
          <div className="prose prose-lg max-w-none text-muted-foreground">
            <p>
              Welcome to Ann Tours and Travel. Our passion for Africa's breathtaking landscapes, diverse cultures, and magnificent wildlife is the driving force behind everything we do. We believe that travel is more than just visiting a new place; it's about creating lasting memories, forging connections, and experiencing the world in its purest form.
            </p>
            <p>
              Founded by a team of seasoned travel experts and local guides, our mission is to provide authentic, responsible, and personalized travel experiences. We specialize in curating bespoke safari adventures across Uganda, Kenya, Tanzania, Zanzibar, and Rwanda. Each itinerary is thoughtfully designed to showcase the unique beauty and character of the destination while ensuring the utmost comfort and safety for our travelers.
            </p>
            <p>
              We are committed to sustainable tourism. We partner with local communities and conservation projects to ensure that our tours have a positive impact on both the environment and the people who call these beautiful places home. When you travel with us, you're not just a tourist; you're part of a larger story of conservation and community empowerment.
            </p>
          </div>
          <div className="relative h-96 rounded-lg overflow-hidden shadow-xl">
             <Image 
                src="https://placehold.co/800x600.png" 
                alt="Safari guides" 
                fill
                className="object-cover"
              />
          </div>
        </div>
      </div>
    </div>
  )
}
