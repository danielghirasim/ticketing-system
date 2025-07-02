import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { buildUrl } from '@/utils/url-helpers';
import { EmailOtpType } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

export async function GET(request: NextRequest, { params }: { params: { tenant: string } }) {
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
    return NextResponse.redirect(buildUrl(`/error?type=invalid_magic-link`, params.tenant, request));
  } else {
    if (isRecovery) {
      return NextResponse.redirect(buildUrl('/tickets/change-password', params.tenant, request));
    } else {
      return NextResponse.redirect(buildUrl('/tickets', params.tenant, request));
    }
  }
}
