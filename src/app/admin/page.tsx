import { getAdminStats, getRecentReviews } from "./actions"
import { StatsCard } from "@/components/admin/StatsCard"
import { RecentReviewsTable } from "@/components/admin/RecentReviewsTable"
import { MapPin, MessageSquare } from "lucide-react"

export default async function AdminDashboard() {
  const { placesCount, reviewsCount } = await getAdminStats()
  const recentReviews = await getRecentReviews()

  return (
    <div className="space-y-6">
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
        <StatsCard
          title="Total Places"
          value={placesCount}
          icon={MapPin}
          description="Total places in the database"
        />
        <StatsCard
          title="Total Reviews"
          value={reviewsCount}
          icon={MessageSquare}
          description="Total reviews submitted"
        />
      </div>

      <div className="space-y-4">
        <h2 className="text-xl font-bold">Recent Reviews</h2>
        <RecentReviewsTable reviews={recentReviews} />
      </div>
    </div>
  )
}
