import { NextRequest, NextResponse } from 'next/server';
import { getSupabaseReqResClient } from './utils/supabase/reqResClient';
import { buildUrl, getHostnameAndPort } from './utils/url-helpers';
import { getSupabaseAdminClient } from './utils/supabase/adminClient';

export async function middleware(request: NextRequest) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  const user = await supabase.auth.getUser();
  const [hostname] = getHostnameAndPort(request);
  const requestedPath = request.nextUrl.pathname;
  const actualUser = user.data?.user;

  const supabaseAdmin = getSupabaseAdminClient();
  const { data: tenantData, error: tenantError } = await supabaseAdmin.from('tenants').select('*').eq('domain', hostname).single();

  const tenant = tenantData?.id;
  const applicationPath = requestedPath;

  // Checks if tenant is valid from our hardcoded file
  if (tenantError || !/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.rewrite(new URL('/not-found', request.url));
  }

  if (applicationPath.startsWith('/tickets')) {
    if (!actualUser) {
      return NextResponse.redirect(buildUrl(`/`, tenant, request));
    } else if (!actualUser.app_metadata?.tenants.includes(tenant)) {
      return NextResponse.rewrite(new URL('/not-found', request.url));
    }
  } else if (applicationPath === '/') {
    if (actualUser) {
      return NextResponse.redirect(buildUrl('/tickets', tenant, request));
    }
  }

  const rewrittenResponse = NextResponse.rewrite(new URL(`/${tenant}${applicationPath}${request.nextUrl.search}`, request.url), {
    request,
  });
  // The new rewritten response doesn't have cookies so we have to set them
  const cookiesToSet = response.value.cookies.getAll();
  cookiesToSet.forEach(({ name, value }) => {
    rewrittenResponse.cookies.set(name, value);
  });

  return rewrittenResponse;
}

export const config = {
  // Matches everything that is not a static file ex: favicon.ico
  matcher: ['/((?!.*\\.).*)'],
};
