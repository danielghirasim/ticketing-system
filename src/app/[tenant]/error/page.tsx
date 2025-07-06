import { urlPath } from '@/utils/url-helpers';
import Link from 'next/link';

type KnownErrors = 'login-failed' | 'magic-link' | 'invalid_magic-link' | 'recovery' | 'register_mail_mismatch' | 'register_mail_exists' | 'register_unknown';

type ErrorPageProps = {
  searchParams: Promise<{
    type?: string;
    email?: string;
  }>;
  params: {
    tenant: string;
  };
};

export default async function ErrorPage({ searchParams, params }: ErrorPageProps) {
  const { type, email } = await searchParams;
  const { tenant } = await params;

  const knownErrors: KnownErrors[] = ['login-failed', 'magic-link', 'invalid_magic-link', 'recovery', 'register_mail_mismatch'];

  return (
    <div style={{ textAlign: 'center' }}>
      <h1>Ooops!</h1>
      {type === 'login-failed' && <strong>Login was not successfull, sorry.</strong>}
      {type === 'invalid_magic-link' && <strong>Magic Link Provided is invalid!</strong>}
      {type === 'magic-link' && <strong>Could not send a magic link. Maybe you had a typo in your E-Mail?.</strong>}
      {type === 'recovery' && <strong>Password could not be reset, please try again.</strong>}
      {type === 'register_mail_mismatch' && (
        <strong>
          You are not legitimated to register an account with <u>{email}.</u>
        </strong>
      )}
      {type === 'register_mail_exists' && (
        <strong>
          There is already an account registered with &nbsp;
          <u>{email}</u>.
        </strong>
      )}
      {type === 'register_unknown' && <strong>Sorry but an unknown error occurred when trying to create an account.</strong>}
      {type && !knownErrors.includes(type as KnownErrors) && <strong>Something went wrong. Please try again or contact support.</strong>}
      <br />
      <br />
      <Link role="button" href={urlPath('/', tenant)}>
        Go back.
      </Link>
    </div>
  );
}
