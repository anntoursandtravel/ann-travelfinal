'use client'

import { useState } from 'react'
import { deleteReview } from "@/app/admin/actions"
import { useToast } from "@/hooks/use-toast"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table"
import { Button } from "@/components/ui/button"
import { format } from "date-fns"
import { Trash2, Loader2, Star } from "lucide-react"

interface Review {
  id: string
  rating: number
  comment: string
  date: string
  placeName: string
  userName: string
  userEmail: string
}

export function ReviewsManager({ initialReviews }: { initialReviews: Review[] }) {
  const [reviews, setReviews] = useState(initialReviews)
  const [loading, setLoading] = useState<string | null>(null)
  const { toast } = useToast()

  async function handleDelete(id: string) {
    if (!confirm("Are you sure you want to delete this review?")) return
    setLoading(id)
    const result = await deleteReview(id)
    if (result.error) {
      toast({ title: "Error", description: result.error, variant: "destructive" })
    } else {
      setReviews(reviews.filter(r => r.id !== id))
      toast({ title: "Success", description: "Review deleted" })
    }
    setLoading(null)
  }

  return (
    <div className="space-y-4">
      <h2 className="text-xl font-bold">Reviews Moderation</h2>
      <div className="rounded-md border">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Place</TableHead>
              <TableHead>User</TableHead>
              <TableHead>Rating</TableHead>
              <TableHead>Comment</TableHead>
              <TableHead>Date</TableHead>
              <TableHead className="text-right">Actions</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {reviews.length === 0 ? (
              <TableRow>
                <TableCell colSpan={6} className="h-24 text-center">
                  No reviews found.
                </TableCell>
              </TableRow>
            ) : (
              reviews.map((review) => (
                <TableRow key={review.id}>
                  <TableCell className="font-medium">{review.placeName}</TableCell>
                  <TableCell>
                    <div className="text-sm font-medium">{review.userName}</div>
                    <div className="text-xs text-muted-foreground">{review.userEmail}</div>
                  </TableCell>
                  <TableCell>
                    <div className="flex items-center gap-1">
                      <Star className="w-3 h-3 fill-primary text-primary" />
                      {review.rating}
                    </div>
                  </TableCell>
                  <TableCell className="max-w-[300px] truncate" title={review.comment}>
                    {review.comment}
                  </TableCell>
                  <TableCell>
                    {review.date ? format(new Date(review.date), "MMM d, yyyy") : "N/A"}
                  </TableCell>
                  <TableCell className="text-right">
                    <Button variant="destructive" size="sm" onClick={() => handleDelete(review.id)} disabled={loading === review.id}>
                      {loading === review.id ? <Loader2 className="h-4 w-4 animate-spin" /> : <Trash2 className="h-4 w-4" />}
                      Delete
                    </Button>
                  </TableCell>
                </TableRow>
              ))
            )}
          </TableBody>
        </Table>
      </div>
    </div>
  )
}
