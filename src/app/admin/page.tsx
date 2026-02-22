import { getDashboardStats, getAnalyticsData, getPlaces, getItineraries, getAllReviews, getUsers, getPopularPlaces, getInquiries } from "./actions"
import { StatsCard } from "@/components/admin/StatsCard"
import { MapPin, MessageSquare, Users, Briefcase, Mail } from "lucide-react"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { OverviewCharts } from "@/components/admin/analytics/OverviewCharts"
import { PopularPlaces } from "@/components/admin/analytics/PopularPlaces"
import { PlacesManager } from "@/components/admin/management/PlacesManager"
import { ItinerariesManager } from "@/components/admin/management/ItinerariesManager"
import { ReviewsManager } from "@/components/admin/management/ReviewsManager"
import { UsersManager } from "@/components/admin/management/UsersManager"
import { InquiriesManager } from "@/components/admin/management/InquiriesManager"

export const dynamic = 'force-dynamic'

export default async function AdminDashboard() {
  const [
    stats,
    analyticsData,
    popularPlaces,
    places,
    itineraries,
    reviews,
    users,
    inquiries
  ] = await Promise.all([
    getDashboardStats(),
    getAnalyticsData(),
    getPopularPlaces(),
    getPlaces(),
    getItineraries(),
    getAllReviews(),
    getUsers(),
    getInquiries()
  ])

  return (
    <div className="space-y-6">
      {/* Overview Cards */}
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-5">
        <StatsCard
          title="Total Places"
          value={stats.placesCount}
          icon={MapPin}
          description="Active listings"
        />
        <StatsCard
          title="Itineraries"
          value={stats.itinerariesCount}
          icon={Briefcase}
          description="Tour packages"
        />
        <StatsCard
          title="Total Reviews"
          value={stats.reviewsCount}
          icon={MessageSquare}
          description="Customer feedback"
        />
         <StatsCard
          title="Users"
          value={stats.usersCount}
          icon={Users}
          description="Registered accounts"
        />
        <StatsCard
            title="Inquiries"
            value={stats.inquiriesCount}
            icon={Mail}
            description="Pending responses"
        />
      </div>

      <Tabs defaultValue="overview" className="space-y-4">
        <TabsList className="bg-white border">
          <TabsTrigger value="overview">Overview</TabsTrigger>
          <TabsTrigger value="places">Places</TabsTrigger>
          <TabsTrigger value="itineraries">Itineraries</TabsTrigger>
          <TabsTrigger value="reviews">Reviews</TabsTrigger>
          <TabsTrigger value="inquiries">Inquiries</TabsTrigger>
          <TabsTrigger value="users">Users</TabsTrigger>
        </TabsList>

        <TabsContent value="overview" className="space-y-4">
          <OverviewCharts
            reviewsData={analyticsData.reviewsChartData}
            usersData={analyticsData.usersChartData}
          />
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-7">
              <div className="col-span-7 lg:col-span-4">
                 <PopularPlaces data={popularPlaces} />
              </div>
          </div>
        </TabsContent>

        <TabsContent value="places">
            <PlacesManager initialPlaces={places} />
        </TabsContent>

        <TabsContent value="itineraries">
            <ItinerariesManager initialItineraries={itineraries} />
        </TabsContent>

        <TabsContent value="reviews">
            <ReviewsManager initialReviews={reviews} />
        </TabsContent>

        <TabsContent value="inquiries">
            <InquiriesManager initialInquiries={inquiries} />
        </TabsContent>

        <TabsContent value="users">
            <UsersManager users={users} />
        </TabsContent>
      </Tabs>
    </div>
  )
}
