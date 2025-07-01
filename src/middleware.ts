import { NextRequest, NextResponse } from 'next/server';
import { getSupabaseReqResClient } from './utils/supabase/reqResClient';

export const config = {
  // Matches everything that is not a static file ex: favicon.ico
  matcher: ['/((?!.*\\.).*)'],
};

export async function middleware(request: NextRequest) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  const user = await supabase.auth.getUser();

  const requestedPath = request.nextUrl.pathname;
  console.log(requestedPath);
  const actualUser = user.data?.user;

  if (requestedPath.startsWith('/tickets')) {
    if (!actualUser) {
      return NextResponse.redirect(new URL('/', request.url));
    }
  } else if (requestedPath === '/') {
    if (actualUser) {
      return NextResponse.redirect(new URL('/tickets', request.url));
    }
  }
  return response.value;
}
