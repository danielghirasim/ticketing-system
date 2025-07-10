import { Suspense } from 'react';
import { TicketList } from './ticket-list';
import { TicketFilters } from './ticket-filters';

export const dynamic = 'force-dynamic';

type TicketListPageProps = {
  params: { tenant: string };
  searchParams: Promise<{ [key: string]: string | string[] | undefined }>;
};

export default async function TicketListPage({ params, searchParams }: TicketListPageProps) {
  const { tenant } = await params;
  return (
    <>
      <h2>Ticket List</h2>
      <TicketFilters />
      <Suspense fallback={<div aria-busy="true">Loading tickets...</div>} key={JSON.stringify(await searchParams)}>
        <TicketList tenant={tenant} searchParams={searchParams} />
      </Suspense>
    </>
  );
}
