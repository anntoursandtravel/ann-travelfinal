import { createClient as createSupabaseClient } from '@supabase/supabase-js'

export function createClient() {
  if (!process.env.NEXT_PUBLIC_SUPABASE_URL || !process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY) {
    return {
      from: () => ({
        select: () => ({ data: [], error: null }),
      })
    } as any
  }

  return createSupabaseClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
  )
}
