import Image from "next/image";
import Link from "next/link";
import { Award } from "lucide-react";
import { Button } from "./ui/button";
export default function TravelersChoice() {
  return (
    <section className="bg-[#004f32]">
      <div className="container mx-auto grid md:grid-cols-12 h-auto md:h-[500px] overflow-hidden">
        <div className="md:col-span-4 text-center py-8 flex flex-col items-center justify-center p-4 text-white">
          <Award className="h-16 w-16 lg:h-20 lg:w-20 mb-5 text-yellow-400" />
          <h2 className="font-headline font-bold text-3xl md:text-4xl">
            Travelers&apos; Choice Best of the Best
          </h2>
          <Button asChild size="lg" className="mt-8 bg-white text-black hover:bg-gray-200 font-bold">
            <Link href="#">See the winners</Link>
          </Button>
        </div>
        <div className="md:col-span-8 h-80 md:h-full relative">
          <Image
            src="https://images.unsplash.com/photo-1546182990-dffeafbe841d?q=80&w=2070&auto=format&fit=crop"
            alt="Traveler's Choice background"
            fill
            className="object-cover hidden md:block"
          />
          <Image
            src="https://images.unsplash.com/photo-1546182990-dffeafbe841d?q=80&w=2070&auto=format&fit=crop"
            alt="Traveler's Choice background"
            fill
            className="object-cover md:hidden"
          />
        </div>
      </div>
    </section>
  );
}
