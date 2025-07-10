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

  const supabase = await getSupabaseCookiesUtilClient();
  let countStatement = supabase.from('tickets').select('*', { count: 'exact', head: true }).eq('tenant', tenant);

  const startingPoint = (page - 1) * 6;

  let ticketsStatement = supabase.from('tickets').select().eq('tenant', tenant);

  const searchValue = sp.search && String(sp?.search).trim();

  if (searchValue) {
    const cleanSearchString = searchValue.replaceAll('"', '').replaceAll('\\', '').replaceAll('%', '');
    const postgrestSearchValue = '"%' + cleanSearchString + '%"';
    const postgrestFilterString = `title.ilike.${postgrestSearchValue}` + `, description.ilike.${postgrestSearchValue}`;

    countStatement = countStatement.or(postgrestFilterString);
    ticketsStatement = ticketsStatement.or(postgrestFilterString);
  }

  ticketsStatement = ticketsStatement
    .order('status', { ascending: true })
    .order('created_at', { ascending: false })
    .range(startingPoint, startingPoint + 5);

  const { count, error: countError } = await countStatement;
  const { data: tickets, error: ticketsError } = await ticketsStatement;

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
          <Link role="button" href={{ query: { page: page - 1, search: searchValue } }}>
            Previous page
          </Link>
        )}
        {moreRows && (
          <Link style={{ marginLeft: 'auto' }} role="button" href={{ query: { page: page + 1, search: searchValue } }}>
            Next page
          </Link>
        )}
      </div>
    </>
  );
}
