'use client'

import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"
import { BarChart, Bar, XAxis, YAxis, Tooltip, ResponsiveContainer, Cell } from 'recharts'

interface PopularPlace {
  name: string
  rating: number
}

interface PopularPlacesProps {
  data: PopularPlace[]
}

const COLORS = ['#34E0A1', '#2ec48d', '#28a779', '#228b65', '#1c6f51'];

export function PopularPlaces({ data }: PopularPlacesProps) {
  return (
    <Card>
      <CardHeader>
        <CardTitle>Top Rated Places</CardTitle>
      </CardHeader>
      <CardContent>
        <div className="h-[300px]">
          <ResponsiveContainer width="100%" height="100%">
            <BarChart layout="vertical" data={data} margin={{ top: 5, right: 30, left: 40, bottom: 5 }}>
              <XAxis type="number" domain={[0, 5]} hide />
              <YAxis dataKey="name" type="category" width={100} tick={{ fontSize: 12 }} interval={0} />
              <Tooltip
                cursor={{fill: 'transparent'}}
                contentStyle={{ borderRadius: '8px', border: 'none', boxShadow: '0 4px 6px -1px rgb(0 0 0 / 0.1)' }}
              />
              <Bar dataKey="rating" fill="#34E0A1" barSize={20} radius={[0, 4, 4, 0]}>
                {data.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                ))}
              </Bar>
            </BarChart>
          </ResponsiveContainer>
        </div>
      </CardContent>
    </Card>
  )
}
