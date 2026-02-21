import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table"
import { format } from "date-fns"

interface Review {
  id: string
  rating: number
  comment: string
  date: string
  placeName: string
  userId: string
}

interface RecentReviewsTableProps {
  reviews: Review[]
}

export function RecentReviewsTable({ reviews }: RecentReviewsTableProps) {
  return (
    <div className="rounded-md border">
      <Table>
        <TableHeader>
          <TableRow>
            <TableHead>Place</TableHead>
            <TableHead>Rating</TableHead>
            <TableHead>Comment</TableHead>
            <TableHead className="text-right">Date</TableHead>
          </TableRow>
        </TableHeader>
        <TableBody>
          {reviews.length === 0 ? (
            <TableRow>
              <TableCell colSpan={4} className="h-24 text-center">
                No reviews found.
              </TableCell>
            </TableRow>
          ) : (
            reviews.map((review) => (
              <TableRow key={review.id}>
                <TableCell className="font-medium">{review.placeName}</TableCell>
                <TableCell>{review.rating} / 5</TableCell>
                <TableCell className="max-w-[300px] truncate" title={review.comment}>
                  {review.comment}
                </TableCell>
                <TableCell className="text-right">
                  {review.date ? format(new Date(review.date), "PPP") : "N/A"}
                </TableCell>
              </TableRow>
            ))
          )}
        </TableBody>
      </Table>
    </div>
  )
}
