'use client';

import { AssigneeSelect } from '@/components/assignee-select';
import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { urlPath } from '@/utils/url-helpers';
import { useParams, useRouter } from 'next/navigation';
import { FormEvent, useEffect, useRef, useState } from 'react';

export default function CreateTicket() {
  const [assignee, setAssignee] = useState<number | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const { tenant } = useParams<{ tenant: string }>();
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();
  const ticketTitleRef = useRef<HTMLInputElement>(null);
  const ticketDescriptionRef = useRef<HTMLTextAreaElement>(null);

  useEffect(() => {
    router.prefetch(urlPath(`/tickets/details/[id]`, tenant));
  }, [router, tenant]);

  async function onSubmit(event: FormEvent) {
    event.preventDefault();
    const title = ticketTitleRef.current?.value ?? '';
    const description = ticketDescriptionRef.current?.value ?? '';

    if (title.trim().length > 4 && description.trim().length > 9) {
      setIsLoading(true);

      await supabase
        .from('tickets')
        .insert({ created_by: 0, title, description, tenant, assignee })
        .select()
        .single()
        .then(({ error, data }) => {
          if (error) {
            console.error(error);
            setIsLoading(false);
            alert('Could not create ticket');
          } else {
            setIsLoading(false);
            router.push(urlPath(`/tickets/details/${data.id}`, tenant));
          }
        });
    } else {
      alert('A title must have at least 5 chars and a description must at least contain 10');
    }
  }

  return (
    <article>
      <h3>Create a new ticket</h3>
      <form onSubmit={onSubmit}>
        <input ref={ticketTitleRef} placeholder="Add a title" disabled={isLoading} />
        <AssigneeSelect tenant={tenant} onValueChanged={setAssignee} />
        <textarea ref={ticketDescriptionRef} placeholder="Add a comment" disabled={isLoading} />
        <button type="submit" disabled={isLoading} aria-busy={isLoading}>
          Create ticket now
        </button>
      </form>
    </article>
  );
}
