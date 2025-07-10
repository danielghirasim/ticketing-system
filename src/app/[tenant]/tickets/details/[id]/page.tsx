import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { TicketComments } from './ticket-comments';
import classes from './ticket-details.module.css';
import TicketDetails from './ticket-details';



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

  return (
    <article className={classes.ticketDetails}>
      <TicketDetails
        id={ticket.id}
        title={ticket.title}
        author_name={ticket.author_name}
        created_at={ticket.created_at}
        status={ticket.status}
        assignee={ticket.assignee}
        isAuthor={isAuthor}
        tenant={tenant}
      />

      <section>{ticket.description}</section>

      <section>{ticket.description}</section>

      <TicketComments />
    </article>
  );
}
