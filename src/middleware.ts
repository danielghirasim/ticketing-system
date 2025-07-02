import { NextRequest, NextResponse } from 'next/server';
import { getSupabaseReqResClient } from './utils/supabase/reqResClient';

export async function middleware(request: NextRequest) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  const user = await supabase.auth.getUser();

  const requestedPath = request.nextUrl.pathname;
  const actualUser = user.data?.user;

  const [tenant, ...restOfPath] = requestedPath.substr(1).split('/');
  const applicationPath = '/' + restOfPath.join('/');

  if (!/[a-z0-9-_]+/.test(tenant)) {
    return NextResponse.rewrite(new URL('/not-found', request.url));
  }

  if (applicationPath.startsWith('/tickets')) {
    if (!actualUser) {
      return NextResponse.redirect(new URL(`/${tenant}/`, request.url));
    }
  } else if (applicationPath === '/') {
    if (actualUser) {
      return NextResponse.redirect(new URL(`/${tenant}/tickets`, request.url));
    }
  }

  return response.value;
}

export const config = {
  // Matches everything that is not a static file ex: favicon.ico
  matcher: ['/((?!.*\\.).*)'],
};
