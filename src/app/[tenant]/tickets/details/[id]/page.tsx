import { TicketComments } from './ticket-comments';
import classes from './ticket-details.module.css';

type TicketDetailsPageProps = {
  params: Promise<{ id: number }>;
};

export default async function TicketDetailsPage({ params }: TicketDetailsPageProps) {
  const { id } = await params;

  if (!id) return null;

  return (
    <article className={classes.ticketDetails}>
      <header>
        <strong>#{id}</strong> - <strong className={classes.ticketStatusGreen}>Open</strong>
        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>AuthorName</strong> at <time>December 10th 2025</time>
        </small>
        <h2>Ticket title should be here</h2>
      </header>

      <section>Some details about the ticket should be here.</section>

      <TicketComments />
    </article>
  );
}
