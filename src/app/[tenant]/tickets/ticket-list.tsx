import { Ticket } from '@/types/types';
import { urlPath } from '@/utils/url-helpers';
import Link from 'next/link';

type TicketListProps = {
  tickets: Ticket[];
  tenant: string;
};
export async function TicketList({ tickets, tenant }: TicketListProps) {
  return (
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th></th>
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
            <td>{ticket.status}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
