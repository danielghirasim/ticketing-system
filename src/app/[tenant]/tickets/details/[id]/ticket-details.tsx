'use client';

import { AssigneeSelect } from '@/components/assignee-select';
import TicketDelete from './ticket-delete';
import classes from './ticket-details.module.css';
import { Tables } from '@/types/supabase';
import { TICKET_STATUS } from '@/utils/constants';
import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { useRouter } from 'next/navigation';

type TicketDetailProps = Pick<Tables<'tickets'>, 'id' | 'title' | 'author_name' | 'created_at' | 'status' | 'assignee'> & {
  isAuthor: boolean | null;
  tenant: string;
};

function getFormattedDate(date: string) {
  return new Date(date).toLocaleDateString('en-US', {
    day: 'numeric',
    month: 'long',
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit',
    hour12: false,
  });
}
export default function TicketDetails({ id, title, author_name, created_at, status, assignee, isAuthor, tenant }: TicketDetailProps) {
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  return (
    <>
      <header>
        <div className="grid">
          <div>
            <strong>#{id}</strong> - <strong className={classes.ticketStatusGreen}>{TICKET_STATUS[status]}</strong>
          </div>
          <div
            style={{
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'end',
            }}
          >
            <AssigneeSelect
              tenant={tenant}
              onValueChanged={async (value) => {
                await supabase
                  .from('tickets')
                  .update({
                    assignee: value,
                  })
                  .eq('id', id)
                  .then(() => router.refresh());
              }}
              initialValue={assignee}
            />
            {isAuthor && <TicketDelete ticketId={id} tenant={tenant} />}
          </div>
        </div>

        <br />
        <small className={classes.authorAndDate}>
          Created by <strong>{author_name}</strong> at <time>{getFormattedDate(created_at)}</time>
        </small>
        <h2>{title}</h2>
      </header>
    </>
  );
}
