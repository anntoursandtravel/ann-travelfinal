import { SidebarProvider, SidebarTrigger } from "@/components/ui/sidebar"
import { AdminSidebar } from "@/components/admin/AdminSidebar"

export default function AdminLayout({ children }: { children: React.ReactNode }) {
  return (
    <SidebarProvider>
      <AdminSidebar />
      <main className="w-full">
        <div className="flex items-center p-4 border-b">
           <SidebarTrigger />
           <h1 className="ml-4 text-xl font-bold">Admin Dashboard</h1>
        </div>
        <div className="p-4 bg-gray-50 min-h-[calc(100vh-65px)]">
            {children}
        </div>
      </main>
    </SidebarProvider>
  )
}
