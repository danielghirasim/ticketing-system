/* eslint-disable */
import { NextRequest } from 'next/server';
import { getSupabaseReqResClient } from './utils/supabase/reqResClient';

export async function middleware(request: NextRequest) {
  const { supabase, response } = getSupabaseReqResClient({ request });
  return response.value;
}
