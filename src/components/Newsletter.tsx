"use client";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Mail } from "lucide-react";

export default function Newsletter() {
  return (
    <section className="py-24 bg-white">
      <div className="container mx-auto px-4">
        <div className="bg-[#004f32] rounded-3xl p-8 md:p-16 text-center text-white relative overflow-hidden">
          {/* Decorative circles */}
          <div className="absolute top-0 left-0 w-64 h-64 bg-white/5 rounded-full -translate-x-1/2 -translate-y-1/2 blur-3xl" />
          <div className="absolute bottom-0 right-0 w-64 h-64 bg-white/5 rounded-full translate-x-1/2 translate-y-1/2 blur-3xl" />

          <div className="relative z-10 max-w-2xl mx-auto">
            <div className="bg-white/10 w-16 h-16 rounded-full flex items-center justify-center mx-auto mb-6">
                <Mail className="w-8 h-8 text-white" />
            </div>
            <h2 className="font-headline text-3xl md:text-4xl font-bold mb-4">
              Get Travel Inspiration & Tips
            </h2>
            <p className="text-white/80 mb-8 text-lg">
              Join our newsletter for exclusive safari offers, expert guides, and the latest travel news from East Africa.
            </p>

            <form className="flex flex-col sm:flex-row gap-3 max-w-md mx-auto" onSubmit={(e) => e.preventDefault()}>
              <Input
                type="email"
                placeholder="Your email address"
                className="bg-white/10 border-white/20 text-white placeholder:text-white/60 h-12 rounded-full px-6 focus-visible:ring-offset-0 focus-visible:ring-white/50"
              />
              <Button size="lg" className="bg-white text-[#004f32] hover:bg-white/90 font-bold rounded-full px-8 h-12">
                Subscribe
              </Button>
            </form>
            <p className="text-white/40 text-xs mt-4">
                By subscribing, you agree to our Terms & Conditions and Privacy Policy.
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}
