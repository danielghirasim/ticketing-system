import { createServerClient } from '@supabase/ssr';
import { NextRequest, NextResponse } from 'next/server';

export const getSupabaseReqResClient = ({ request }: { request: NextRequest }) => {
  const response = {
    value: NextResponse.next({ request: request }),
  };
  const supabase = createServerClient(process.env.NEXT_PUBLIC_SUPABASE_URL!, process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!, {
    cookies: {
      getAll() {
        return request.cookies.getAll();
      },
      setAll(cookiesToSet) {
        cookiesToSet.forEach(({ name, value }) => {
          request.cookies.set(name, value);
        });
        response.value = NextResponse.next({
          request,
        });
        cookiesToSet.forEach(({ name, value, options }) => {
          response.value.cookies.set(name, value, options);
        });
      },
    },
  });
  return { supabase, response };
};
