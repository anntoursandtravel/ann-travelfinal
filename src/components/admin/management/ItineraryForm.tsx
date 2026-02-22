'use client'

import { useState } from 'react'
import { useForm } from "react-hook-form"
import { zodResolver } from "@hookform/resolvers/zod"
import { z } from "zod"
import { Button } from "@/components/ui/button"
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form"
import { Input } from "@/components/ui/input"
import { Textarea } from "@/components/ui/textarea"
import { createItinerary, updateItinerary } from "@/app/admin/actions"
import { useToast } from "@/hooks/use-toast"
import { Itinerary } from "@/lib/itineraries"
import { Loader2 } from "lucide-react"

const formSchema = z.object({
  title: z.string().min(2, "Title is required"),
  countries: z.string().min(2, "Countries are required (comma separated)"),
  duration: z.string().min(2, "Duration is required"),
  image: z.string().url("Must be a valid URL"),
  description: z.string().min(10, "Description is required"),
  dailyBreakdown: z.string().refine((val) => {
    try {
      JSON.parse(val)
      return true
    } catch {
      return false
    }
  }, "Must be valid JSON array of daily breakdown"),
})

export function ItineraryForm({ itinerary, onClose }: { itinerary?: Itinerary, onClose: () => void }) {
  const { toast } = useToast()
  const [loading, setLoading] = useState(false)

  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      title: itinerary?.title || "",
      countries: itinerary?.countries.join(', ') || "",
      duration: itinerary?.duration || "",
      image: itinerary?.image || "",
      description: itinerary?.description || "",
      dailyBreakdown: itinerary ? JSON.stringify(itinerary.dailyBreakdown, null, 2) : '[\n  {\n    "day": 1,\n    "title": "Arrival",\n    "description": "Arrive and transfer to hotel."\n  }\n]',
    },
  })

  async function onSubmit(values: z.infer<typeof formSchema>) {
    setLoading(true)

    const formattedValues = {
        ...values,
        countries: values.countries.split(',').map(c => c.trim()),
        dailyBreakdown: JSON.parse(values.dailyBreakdown)
    }

    let result
    if (itinerary) {
      result = await updateItinerary(itinerary.id, formattedValues)
    } else {
      result = await createItinerary(formattedValues)
    }

    setLoading(false)
    if (result.error) {
      toast({ title: "Error", description: result.error, variant: "destructive" })
    } else {
      toast({ title: "Success", description: `Itinerary ${itinerary ? 'updated' : 'created'}` })
      onClose()
    }
  }

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
        <FormField
          control={form.control}
          name="title"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Title</FormLabel>
              <FormControl>
                <Input placeholder="Safari Adventure" {...field} />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />

        <div className="grid grid-cols-2 gap-4">
            <FormField
              control={form.control}
              name="countries"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Countries (Comma separated)</FormLabel>
                  <FormControl>
                    <Input placeholder="Kenya, Tanzania" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
            <FormField
              control={form.control}
              name="duration"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Duration</FormLabel>
                  <FormControl>
                    <Input placeholder="7 Days / 6 Nights" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
        </div>

        <FormField
          control={form.control}
          name="image"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Image URL</FormLabel>
              <FormControl>
                <Input placeholder="https://..." {...field} />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />

        <FormField
          control={form.control}
          name="description"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Description</FormLabel>
              <FormControl>
                <Textarea placeholder="Brief overview..." {...field} />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />

        <FormField
          control={form.control}
          name="dailyBreakdown"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Daily Breakdown (JSON)</FormLabel>
              <FormControl>
                <Textarea className="font-mono text-xs" rows={10} {...field} />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />

        <Button type="submit" disabled={loading} className="w-full">
          {loading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
          {itinerary ? 'Update Itinerary' : 'Create Itinerary'}
        </Button>
      </form>
    </Form>
  )
}
