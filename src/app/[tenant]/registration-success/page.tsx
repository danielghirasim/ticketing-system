import { urlPath } from '@/utils/url-helpers';
import Link from 'next/link';

type RegistartionSuccessPageProps = {
  searchParams: {
    email: string;
  };
  params: {
    tenant: string;
  };
};

export default async function RegistrationSuccessPage({ searchParams, params }: RegistartionSuccessPageProps) {
  const { email } = await searchParams;
  const { tenant } = await params;
  return (
    <div style={{ textAlign: 'center' }}>
      <h1>Registration succeeded!</h1>
      <p>Check your email ({email}) for a link to activate your account.</p>
      <br />
      <Link role="button" href={urlPath('/', tenant)}>
        Login
      </Link>
    </div>
  );
}
