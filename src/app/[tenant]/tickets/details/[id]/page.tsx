import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { TicketComments } from './ticket-comments';
import classes from './ticket-details.module.css';
import TicketDelete from './ticket-delete';

export const TICKET_STATUS = {
  open: 'Open',
  in_progress: 'In progress',
  information_missing: 'Information missing',
  canceled: 'Canceled',
  done: 'Done',
};

type TicketDetailsPageProps = {
  params: { id: number; tenant: string };
};

export default async function TicketDetailsPage({ params }: TicketDetailsPageProps) {
  const { id, tenant } = await params;
  let isAuthor = false;

  if (!id) {
    return (
      <div className={classes.errorContainer}>
        <h2>Invalid Ticket</h2>
        <p>No ticket ID provided.</p>
      </div>
    );
  }

  const supabase = await getSupabaseCookiesUtilClient();
  const supabaseUserId = (await supabase.auth.getUser()).data.user?.id;

  // Get tickets
  const { data: ticket, error } = await supabase.from('tickets').select().eq('id', id).single();

  if (error || !ticket) {
    return (
      <div className={classes.errorContainer}>
        <h2>Ticket Not Found</h2>
        <p>The ticket with ID #{id} could not be found.</p>
      </div>
    );
  }

  // Get Service user
  if (supabaseUserId) {
    const { data: serviceUser } = await supabase.from('service_users').select('id').eq('supabase_user', supabaseUserId).single();
    isAuthor = serviceUser?.id === ticket.created_by;
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
        <div className="grid">
          <div>
            <strong>#{ticket.id}</strong> - <strong className={classes.ticketStatusGreen}>{TICKET_STATUS[ticket.status]}</strong>
          </div>
          {isAuthor && <TicketDelete ticketId={ticket.id} tenant={tenant} />}
        </div>

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
