import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { EmailOtpType } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

export async function GET(request: NextRequest) {
  const { searchParams } = new URL(request.url);
  const supabase = await getSupabaseCookiesUtilClient();
  const hashed_token = searchParams.get('hashed_token');
  const isRecovery = searchParams.get('type') === 'recovery';

  if (!hashed_token) return;

  let verifyType: EmailOtpType = 'email';
  if (isRecovery) verifyType = 'recovery';

  const { error } = await supabase.auth.verifyOtp({
    type: verifyType,
    token_hash: hashed_token,
  });

  if (error) {
    return NextResponse.redirect(new URL(`/error?type=invalid_magic-link`, request.url));
  } else {
    if (isRecovery) {
      return NextResponse.redirect(new URL('/tickets/change-password', request.url));
    } else {
      return NextResponse.redirect(new URL('/tickets', request.url));
    }
  }
}
