'use client';

import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { urlPath } from '@/utils/url-helpers';
import { useRouter } from 'next/navigation';

export default function TicketDelete({ ticketId, tenant }: { ticketId: number; tenant: string }) {
  const router = useRouter();
  async function deleteTicket(ticketId: number) {
    const supabase = await getSupabaseBrowserClient();
    supabase
      .from('tickets')
      .delete()
      .eq('id', ticketId)
      .then(() => {
        router.push(urlPath('/tickets', tenant));
      });
  }

  return (
    <button
      role="button"
      className="little-danger"
      onClick={() => {
        const userResponse = confirm('Are you sure you want to delete the ticket?');
        if (userResponse) deleteTicket(ticketId);
      }}
    >
      Delete ticket
    </button>
  );
}
