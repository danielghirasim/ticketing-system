import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { NextRequest, NextResponse } from 'next/server';

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const hashed_token = searchParams.get('hashed_token');

  if (!hashed_token) return;

  const supabase = await getSupabaseCookiesUtilClient();
  const { error } = await supabase.auth.verifyOtp({
    type: 'email',
    token_hash: hashed_token,
  });

  if (error) {
    return NextResponse.redirect(new URL('/error?type=invalid_magic-link', request.url));
  } else {
    return NextResponse.redirect(new URL('/tickets', request.url));
  }
}
