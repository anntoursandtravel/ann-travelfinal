'use client'

import { useState } from 'react'
import { Itinerary } from "@/lib/itineraries"
import { deleteItinerary } from "@/app/admin/actions"
import { useToast } from "@/hooks/use-toast"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table"
import { Button } from "@/components/ui/button"
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog"
import { Input } from "@/components/ui/input"
import { Plus, Search, Edit, Trash2, Loader2 } from "lucide-react"
import { ItineraryForm } from "./ItineraryForm"

export function ItinerariesManager({ initialItineraries }: { initialItineraries: Itinerary[] }) {
  const [itineraries, setItineraries] = useState(initialItineraries)
  const [search, setSearch] = useState("")
  const [loading, setLoading] = useState<string | null>(null)
  const [isDialogOpen, setIsDialogOpen] = useState(false)
  const [editingItinerary, setEditingItinerary] = useState<Itinerary | undefined>(undefined)
  const { toast } = useToast()

  const filteredItineraries = itineraries.filter(it =>
    it.title.toLowerCase().includes(search.toLowerCase()) ||
    it.countries.some(c => c.toLowerCase().includes(search.toLowerCase()))
  )

  async function handleDelete(id: string) {
    if (!confirm("Are you sure you want to delete this itinerary?")) return
    setLoading(id)
    const result = await deleteItinerary(id)
    if (result.error) {
      toast({ title: "Error", description: result.error, variant: "destructive" })
    } else {
      setItineraries(itineraries.filter(i => i.id !== id))
      toast({ title: "Success", description: "Itinerary deleted" })
    }
    setLoading(null)
  }

  function handleEdit(itinerary: Itinerary) {
    setEditingItinerary(itinerary)
    setIsDialogOpen(true)
  }

  function handleCreate() {
      setEditingItinerary(undefined)
      setIsDialogOpen(true)
  }

  return (
    <div className="space-y-4">
      <div className="flex justify-between items-center">
        <div className="relative w-72">
          <Search className="absolute left-2 top-2.5 h-4 w-4 text-muted-foreground" />
          <Input placeholder="Search itineraries..." className="pl-8" value={search} onChange={(e) => setSearch(e.target.value)} />
        </div>
        <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
          <DialogTrigger asChild>
            <Button onClick={handleCreate}><Plus className="mr-2 h-4 w-4" /> Add Itinerary</Button>
          </DialogTrigger>
          <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
            <DialogHeader>
              <DialogTitle>{editingItinerary ? 'Edit Itinerary' : 'Add New Itinerary'}</DialogTitle>
            </DialogHeader>
            <ItineraryForm itinerary={editingItinerary} onClose={() => setIsDialogOpen(false)} />
          </DialogContent>
        </Dialog>
      </div>

      <div className="rounded-md border">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Title</TableHead>
              <TableHead>Duration</TableHead>
              <TableHead>Countries</TableHead>
              <TableHead className="text-right">Actions</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {filteredItineraries.length === 0 ? (
              <TableRow>
                <TableCell colSpan={4} className="h-24 text-center">
                  No itineraries found.
                </TableCell>
              </TableRow>
            ) : (
              filteredItineraries.map((itinerary) => (
                <TableRow key={itinerary.id}>
                  <TableCell className="font-medium">{itinerary.title}</TableCell>
                  <TableCell>{itinerary.duration}</TableCell>
                  <TableCell>{itinerary.countries.join(', ')}</TableCell>
                  <TableCell className="text-right">
                    <div className="flex justify-end gap-2">
                      <Button variant="outline" size="icon" onClick={() => handleEdit(itinerary)}>
                        <Edit className="h-4 w-4" />
                      </Button>
                      <Button variant="destructive" size="icon" onClick={() => handleDelete(itinerary.id)} disabled={loading === itinerary.id}>
                        {loading === itinerary.id ? <Loader2 className="h-4 w-4 animate-spin" /> : <Trash2 className="h-4 w-4" />}
                      </Button>
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
