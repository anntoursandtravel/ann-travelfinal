'use client'

import { useState } from 'react'
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog"
import { format } from "date-fns"
import { deleteInquiry, markInquiryAsRead } from "@/app/admin/actions"
import { useToast } from "@/hooks/use-toast"
import { Loader2, Trash2, MailOpen } from "lucide-react"

interface Inquiry {
  id: string
  name: string
  email: string
  subject: string
  message: string
  created_at: string
  status: 'read' | 'unread'
}

export function InquiriesManager({ initialInquiries }: { initialInquiries: Inquiry[] }) {
  const [inquiries, setInquiries] = useState(initialInquiries)
  const [loading, setLoading] = useState<string | null>(null)
  const { toast } = useToast()

  async function handleDelete(id: string) {
    setLoading(id)
    const result = await deleteInquiry(id)
    if (result.error) {
      toast({ title: "Error", description: result.error, variant: "destructive" })
    } else {
      setInquiries(inquiries.filter(i => i.id !== id))
      toast({ title: "Success", description: "Inquiry deleted" })
    }
    setLoading(null)
  }

  async function handleMarkAsRead(id: string) {
    setLoading(id)
    const result = await markInquiryAsRead(id)
    if (result.error) {
      toast({ title: "Error", description: result.error, variant: "destructive" })
    } else {
      setInquiries(inquiries.map(i => i.id === id ? { ...i, status: 'read' } : i))
      toast({ title: "Success", description: "Marked as read" })
    }
    setLoading(null)
  }

  return (
    <div className="space-y-4">
      <div className="flex justify-between items-center">
        <h2 className="text-xl font-bold">Inquiries</h2>
        <Badge variant="secondary">{inquiries.filter(i => i.status === 'unread').length} Unread</Badge>
      </div>

      <div className="rounded-md border">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Status</TableHead>
              <TableHead>Date</TableHead>
              <TableHead>Name</TableHead>
              <TableHead>Subject</TableHead>
              <TableHead className="text-right">Actions</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {inquiries.length === 0 ? (
              <TableRow>
                <TableCell colSpan={5} className="h-24 text-center">
                  No inquiries found.
                </TableCell>
              </TableRow>
            ) : (
              inquiries.map((inquiry) => (
                <TableRow key={inquiry.id} className={inquiry.status === 'unread' ? 'bg-muted/50' : ''}>
                  <TableCell>
                    {inquiry.status === 'unread' ? (
                      <Badge variant="default">New</Badge>
                    ) : (
                      <Badge variant="outline">Read</Badge>
                    )}
                  </TableCell>
                  <TableCell>{format(new Date(inquiry.created_at), "MMM d, yyyy")}</TableCell>
                  <TableCell>
                    <div className="font-medium">{inquiry.name}</div>
                    <div className="text-xs text-muted-foreground">{inquiry.email}</div>
                  </TableCell>
                  <TableCell className="max-w-[200px] truncate">{inquiry.subject}</TableCell>
                  <TableCell className="text-right">
                    <div className="flex justify-end gap-2">
                      <Dialog>
                        <DialogTrigger asChild>
                          <Button variant="outline" size="sm">View</Button>
                        </DialogTrigger>
                        <DialogContent>
                          <DialogHeader>
                            <DialogTitle>{inquiry.subject}</DialogTitle>
                          </DialogHeader>
                          <div className="space-y-4">
                            <div className="grid grid-cols-2 gap-4 text-sm">
                              <div>
                                <span className="font-bold">From:</span> {inquiry.name}
                              </div>
                              <div>
                                <span className="font-bold">Email:</span> {inquiry.email}
                              </div>
                              <div className="col-span-2">
                                <span className="font-bold">Date:</span> {format(new Date(inquiry.created_at), "PPP p")}
                              </div>
                            </div>
                            <div className="bg-muted p-4 rounded-md text-sm whitespace-pre-wrap">
                              {inquiry.message}
                            </div>
                            <div className="flex justify-end gap-2">
                              {inquiry.status === 'unread' && (
                                <Button onClick={() => handleMarkAsRead(inquiry.id)} disabled={loading === inquiry.id}>
                                  {loading === inquiry.id ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <MailOpen className="mr-2 h-4 w-4" />}
                                  Mark as Read
                                </Button>
                              )}
                              <Button variant="destructive" onClick={() => handleDelete(inquiry.id)} disabled={loading === inquiry.id}>
                                {loading === inquiry.id ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Trash2 className="mr-2 h-4 w-4" />}
                                Delete
                              </Button>
                            </div>
                          </div>
                        </DialogContent>
                      </Dialog>
                    </div>
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
