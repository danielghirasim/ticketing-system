import { getSupabaseCookiesUtilClient } from "@/utils/supabase/cookiesUtilClient";

export default async function Home() {
  const supabase = await getSupabaseCookiesUtilClient();
  const buckets = await supabase.storage.listBuckets();

  return <div>{JSON.stringify(buckets, null, 2)}</div>;
}
