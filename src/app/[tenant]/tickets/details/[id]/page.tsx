import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { TicketComments } from './ticket-comments';
import classes from './ticket-details.module.css';

export const TICKET_STATUS = {
  open: 'Open',
  in_progress: 'In progress',
  information_missing: 'Information missing',
  canceled: 'Canceled',
  done: 'Done',
};

type TicketDetailsPageProps = {
  params: { id: number };
};

export default async function TicketDetailsPage({ params }: TicketDetailsPageProps) {
  const { id } = await params;

  if (!id) {
    return (
      <div className={classes.errorContainer}>
        <h2>Invalid Ticket</h2>
        <p>No ticket ID provided.</p>
      </div>
    );
  }

  const supabase = await getSupabaseCookiesUtilClient();
  const { data: ticket, error } = await supabase.from('tickets').select().eq('id', id).single();

  if (error || !ticket) {
    return (
      <div className={classes.errorContainer}>
        <h2>Ticket Not Found</h2>
        <p>The ticket with ID #{id} could not be found.</p>
      </div>
    );
  }

  const formattedDate = new Date(ticket.created_at).toLocaleDateString('en-US', {
    day: 'numeric',
    month: 'long',
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
    hour12: false,
  });

  return (
    <article className={classes.ticketDetails}>
      <header>
        <strong>#{ticket.id}</strong> - <strong className={classes.ticketStatusGreen}>{TICKET_STATUS[ticket.status]}</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{ticket.author_name}</strong> at <time>{formattedDate}</time>
        </small>
        <h2>{ticket.title}</h2>
      </header>

      <section>{ticket.description}</section>

      <TicketComments />
    </article>
  );
}
