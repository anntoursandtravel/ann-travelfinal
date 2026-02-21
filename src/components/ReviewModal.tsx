"use client";

import { useState } from "react";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { Textarea } from "@/components/ui/textarea";
import { Label } from "@/components/ui/label";
import { Star } from "lucide-react";
import { submitReview } from "@/app/actions";
import { useToast } from "@/hooks/use-toast";

interface ReviewModalProps {
  placeId: string;
  placeName: string;
}

export function ReviewModal({ placeId, placeName }: ReviewModalProps) {
  const [rating, setRating] = useState(0);
  const [comment, setComment] = useState("");
  const [isOpen, setIsOpen] = useState(false);
  const { toast } = useToast();

  const handleSubmit = async () => {
    const formData = new FormData();
    formData.append("placeId", placeId);
    formData.append("rating", rating.toString());
    formData.append("comment", comment);

    try {
        const result = await submitReview(formData);
        if (result.error) {
            toast({ title: "Error", description: result.error, variant: "destructive" });
        } else {
            toast({ title: "Success", description: "Review submitted successfully!" });
            setIsOpen(false);
            setComment("");
            setRating(0);
        }
    } catch (err) {
        toast({ title: "Error", description: "Something went wrong.", variant: "destructive" });
    }
  };

  return (
    <Dialog open={isOpen} onOpenChange={setIsOpen}>
      <DialogTrigger asChild>
        <Button variant="outline" className="rounded-full font-bold border-black hover:bg-black hover:text-white transition-colors">
          Write a Review
        </Button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>Rate {placeName}</DialogTitle>
          <DialogDescription>
            Share your experience with other travelers.
          </DialogDescription>
        </DialogHeader>
        <div className="grid gap-4 py-4">
          <div className="flex justify-center gap-2">
            {[1, 2, 3, 4, 5].map((star) => (
              <button
                key={star}
                type="button"
                onClick={() => setRating(star)}
                className="focus:outline-none transition-transform hover:scale-110"
              >
                <Star
                  className={"w-8 h-8 " + (star <= rating ? "fill-primary text-primary" : "text-gray-300")}
                />
              </button>
            ))}
          </div>
          <div className="grid gap-2">
            <Label htmlFor="comment" className="font-bold">
              Your Review
            </Label>
            <Textarea
              id="comment"
              value={comment}
              onChange={(e) => setComment(e.target.value)}
              placeholder="Tell us about your stay..."
              className="h-32 resize-none"
            />
          </div>
        </div>
        <DialogFooter>
          <Button onClick={handleSubmit} disabled={rating === 0 || !comment} className="w-full font-bold rounded-full bg-primary hover:bg-primary/90 text-black">
            Submit Review
          </Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
}
