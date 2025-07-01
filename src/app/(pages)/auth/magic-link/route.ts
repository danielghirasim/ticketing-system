import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { NextRequest, NextResponse } from 'next/server';

export async function POST(request: NextRequest) {
  const formData = await request.formData();
  const email = formData.get('email') as string;
  const supabase = await getSupabaseCookiesUtilClient();
  const { error } = await supabase.auth.signInWithOtp({
    email,
    options: {
      emailRedirectTo: 'http://localhost:3000/',
    },
  });

  if (error) {
    return NextResponse.redirect(new URL('/error?type=magic-link', request.url), 302);
  }
  return NextResponse.redirect(new URL('/magic-thanks', request.url), 302);
}
