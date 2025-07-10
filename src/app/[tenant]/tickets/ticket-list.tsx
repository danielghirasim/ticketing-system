import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { urlPath } from '@/utils/url-helpers';
import Link from 'next/link';

type TicketListProps = {
  tenant: string;
  searchParams: Promise<{ [key: string]: string | string[] | undefined }>;
};
export async function TicketList({ tenant, searchParams }: TicketListProps) {
  const sp = await searchParams;

  // Pagination
  let page = 1;
  if (sp?.page && +sp.page > 1) page = +sp.page;

  const startingPoint = (page - 1) * 6;

  const supabase = await getSupabaseCookiesUtilClient();
  const { data: tickets, error: ticketsError } = await supabase
    .from('tickets')
    .select('*')
    .eq('tenant', tenant)
    .order('status', { ascending: true })
    .order('created_at', { ascending: true })
    .range(startingPoint, startingPoint + 5);
  const { count, error: countError } = await supabase.from('tickets').select('*', { count: 'exact', head: true }).eq('tenant', tenant);

  if (ticketsError || countError) {
    return <div>No tickets found</div>;
  }

  const moreRows = count && count - page * 6 > 0;

  return (
    <>
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Status</th>
          </tr>
        </thead>
        <tbody>
          {tickets.map((ticket) => (
            <tr key={ticket.id}>
              <td>{ticket.id}</td>
              <td>
                <Link href={`${urlPath(`/tickets/details/${ticket.id}`, tenant)}`}>{ticket.title}</Link>
              </td>
              <td>{ticket.author_name}</td>
              <td>{ticket.status}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <div style={{ display: 'flex' }}>
        {page > 1 && (
          <Link role="button" href={{ query: { page: page - 1 } }}>
            Previous page
          </Link>
        )}
        {moreRows && (
          <Link style={{ marginLeft: 'auto' }} role="button" href={{ query: { page: page + 1 } }}>
            Next page
          </Link>
        )}
      </div>
    </>
  );
}
