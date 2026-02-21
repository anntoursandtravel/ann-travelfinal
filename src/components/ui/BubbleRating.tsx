import { Circle } from "lucide-react";
import { cn } from "@/lib/utils";

interface BubbleRatingProps {
  rating: number;
  maxRating?: number;
  className?: string;
  size?: number;
}

export function BubbleRating({ rating, maxRating = 5, className, size = 16 }: BubbleRatingProps) {
  const roundedRating = Math.round(rating * 2) / 2;

  return (
    <div className={cn("flex items-center gap-0.5", className)}>
      {Array.from({ length: maxRating }).map((_, i) => {
        const isFull = i + 1 <= Math.floor(roundedRating);
        const isHalf = i + 0.5 === roundedRating;

        return (
          <div key={i} className="relative">
             <Circle
                size={size}
                className="text-muted-foreground/30 fill-muted/30 stroke-[1.5px]"
             />

             {(isFull || isHalf) && (
                <div
                  className={cn(
                    "absolute top-0 left-0 overflow-hidden",
                    isHalf ? "w-[50%]" : "w-full"
                  )}
                >
                    <Circle size={size} className="fill-[#00aa6c] text-[#00aa6c] stroke-[1.5px]" />
                </div>
             )}
          </div>
        );
      })}
    </div>
  );
}
