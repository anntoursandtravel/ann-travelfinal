'use client'

import { useState } from 'react'
import { Place } from "@/lib/types"
import { deletePlace } from "@/app/admin/actions"
import { useToast } from "@/hooks/use-toast"
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table"
import { Button } from "@/components/ui/button"
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from "@/components/ui/dialog"
import { Input } from "@/components/ui/input"
import { Plus, Search, Edit, Trash2, Loader2 } from "lucide-react"
import { PlaceForm } from "./PlaceForm"

export function PlacesManager({ initialPlaces }: { initialPlaces: Place[] }) {
  const [places, setPlaces] = useState(initialPlaces)
  const [search, setSearch] = useState("")
  const [loading, setLoading] = useState<string | null>(null)
  const [isDialogOpen, setIsDialogOpen] = useState(false)
  const [editingPlace, setEditingPlace] = useState<Place | undefined>(undefined)
  const { toast } = useToast()

  const filteredPlaces = places.filter(place =>
    place.name.toLowerCase().includes(search.toLowerCase()) ||
    place.country.toLowerCase().includes(search.toLowerCase())
  )

  async function handleDelete(id: string) {
    if (!confirm("Are you sure you want to delete this place?")) return
    setLoading(id)
    const result = await deletePlace(id)
    if (result.error) {
      toast({ title: "Error", description: result.error, variant: "destructive" })
    } else {
      setPlaces(places.filter(p => p.id !== id))
      toast({ title: "Success", description: "Place deleted" })
    }
    setLoading(null)
  }

  function handleEdit(place: Place) {
    setEditingPlace(place)
    setIsDialogOpen(true)
  }

  function handleCreate() {
      setEditingPlace(undefined)
      setIsDialogOpen(true)
  }

  return (
    <div className="space-y-4">
      <div className="flex justify-between items-center">
        <div className="relative w-72">
          <Search className="absolute left-2 top-2.5 h-4 w-4 text-muted-foreground" />
          <Input placeholder="Search places..." className="pl-8" value={search} onChange={(e) => setSearch(e.target.value)} />
        </div>
        <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
          <DialogTrigger asChild>
            <Button onClick={handleCreate}><Plus className="mr-2 h-4 w-4" /> Add Place</Button>
          </DialogTrigger>
          <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
            <DialogHeader>
              <DialogTitle>{editingPlace ? 'Edit Place' : 'Add New Place'}</DialogTitle>
            </DialogHeader>
            <PlaceForm place={editingPlace} onClose={() => setIsDialogOpen(false)} />
          </DialogContent>
        </Dialog>
      </div>

      <div className="rounded-md border">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>Name</TableHead>
              <TableHead>Country</TableHead>
              <TableHead>Type</TableHead>
              <TableHead>Rating</TableHead>
              <TableHead className="text-right">Actions</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {filteredPlaces.length === 0 ? (
              <TableRow>
                <TableCell colSpan={5} className="h-24 text-center">
                  No places found.
                </TableCell>
              </TableRow>
            ) : (
              filteredPlaces.map((place) => (
                <TableRow key={place.id}>
                  <TableCell className="font-medium">{place.name}</TableCell>
                  <TableCell>{place.country}</TableCell>
                  <TableCell>{place.type}</TableCell>
                  <TableCell>{place.rating}</TableCell>
                  <TableCell className="text-right">
                    <div className="flex justify-end gap-2">
                      <Button variant="outline" size="icon" onClick={() => handleEdit(place)}>
                        <Edit className="h-4 w-4" />
                      </Button>
                      <Button variant="destructive" size="icon" onClick={() => handleDelete(place.id)} disabled={loading === place.id}>
                        {loading === place.id ? <Loader2 className="h-4 w-4 animate-spin" /> : <Trash2 className="h-4 w-4" />}
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
