import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';

export default function Page() {
  async function serverActionWithSupabase() {
    'use server';
    const supabase = await getSupabaseCookiesUtilClient();
    const buckets = await supabase.storage.listBuckets();
    console.log('@server', buckets);
  }

  return (
    <div>
      <h1>Server Action Example</h1>

      <form action={serverActionWithSupabase}>
        <button type="submit">Run Example Server Action</button>
      </form>
    </div>
  );
}
