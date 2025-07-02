import Nav from './nav';
import TenantName from './tenant-name';

type TicketLayoutProps = {
  children: React.ReactNode;
  params: {
    tenant: string;
  };
};

export default async function TicketsLayout({ children, params }: TicketLayoutProps) {
  const { tenant } = await params;
  return (
    <>
      <section style={{ borderBottom: '1px solid gray' }}>
        <TenantName tenantName={tenant} />
        <Nav tenant={tenant} />
      </section>
      <section>{children}</section>
    </>
  );
}
