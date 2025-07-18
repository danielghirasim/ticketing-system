import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { buildUrl } from '@/utils/url-helpers';
import { NextRequest, NextResponse } from 'next/server';

export async function POST(request: NextRequest, { params }: { params: { tenant: string } }) {
  const { tenant } = await params;
  const formData = await request.formData();
  const email = formData.get('email') as string;
  const password = formData.get('password') as string;

  const supabase = await getSupabaseCookiesUtilClient();
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password,
  });
  const userData = data?.user;

  if (!userData || error || !email || !password || !userData.app_metadata.tenants.includes(tenant)) {
    await supabase.auth.signOut();
    return NextResponse.redirect(buildUrl('/error?type=login-failed', tenant, request), {
      status: 302,
    });
  }

  return NextResponse.redirect(buildUrl('/tickets', tenant, request), {
    status: 302,
  });
}
