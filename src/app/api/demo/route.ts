/* eslint-disable */

import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { NextRequest, NextResponse } from 'next/server';

export async function GET(request: NextRequest) {
  const supabase = await getSupabaseCookiesUtilClient();
  const buckets = await supabase.storage.listBuckets();
  return NextResponse.json(buckets);
}
