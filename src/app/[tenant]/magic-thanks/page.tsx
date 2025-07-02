import { urlPath } from '@/utils/url-helpers';
import Link from 'next/link';

type MagicLinkSuccessPageProps = {
  searchParams: {
    type: string;
  };
  params: {
    tenant: string;
  };
};

export default async function MagicLinkSuccessPage({ searchParams, params }: MagicLinkSuccessPageProps) {
  const { tenant } = await params;
  const { type } = await searchParams;

  return (
    <div style={{ textAlign: 'center' }}>
      <h1>{type === 'magiclink' ? 'Magic on its way!' : "Password Reset link is on it's way"}</h1>
      Thanks! You should get a link to login in a few seconds.
      <br />
      <br />
      <Link role="button" href={urlPath('/', tenant)}>
        Go back.
      </Link>
    </div>
  );
}
