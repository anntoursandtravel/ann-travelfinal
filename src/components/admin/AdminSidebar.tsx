"use client"

import { Home, MapPin, MessageSquare, LayoutDashboard, Briefcase, Mail, Users } from "lucide-react"
import Link from "next/link"
import { useSearchParams } from "next/navigation"

import {
  Sidebar,
  SidebarContent,
  SidebarGroup,
  SidebarGroupContent,
  SidebarGroupLabel,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
} from "@/components/ui/sidebar"

// Menu items.
const items = [
  {
    title: "Overview",
    url: "/admin?tab=overview",
    tab: "overview",
    icon: LayoutDashboard,
  },
  {
    title: "Places",
    url: "/admin?tab=places",
    tab: "places",
    icon: MapPin,
  },
  {
    title: "Itineraries",
    url: "/admin?tab=itineraries",
    tab: "itineraries",
    icon: Briefcase,
  },
  {
    title: "Reviews",
    url: "/admin?tab=reviews",
    tab: "reviews",
    icon: MessageSquare,
  },
  {
    title: "Inquiries",
    url: "/admin?tab=inquiries",
    tab: "inquiries",
    icon: Mail,
  },
  {
    title: "Users",
    url: "/admin?tab=users",
    tab: "users",
    icon: Users,
  },
  {
    title: "Back to Home",
    url: "/",
    tab: null, // special case
    icon: Home,
  },
]

export function AdminSidebar() {
  const searchParams = useSearchParams()
  const activeTab = searchParams.get('tab') || 'overview'

  return (
    <Sidebar>
      <SidebarContent>
        <SidebarGroup>
          <SidebarGroupLabel>Admin Dashboard</SidebarGroupLabel>
          <SidebarGroupContent>
            <SidebarMenu>
              {items.map((item) => (
                <SidebarMenuItem key={item.title}>
                  <SidebarMenuButton asChild isActive={item.tab ? activeTab === item.tab : false}>
                    <Link href={item.url}>
                      <item.icon />
                      <span>{item.title}</span>
                    </Link>
                  </SidebarMenuButton>
                </SidebarMenuItem>
              ))}
            </SidebarMenu>
          </SidebarGroupContent>
        </SidebarGroup>
      </SidebarContent>
    </Sidebar>
  )
}
