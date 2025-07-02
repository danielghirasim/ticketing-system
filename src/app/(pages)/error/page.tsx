import Link from 'next/link';

type KnownErrors = 'login-failed' | 'magic-link' | 'invalid_magic-link' | 'recovery';

type ErrorPageProps = {
  searchParams: Promise<{
    type?: string;
  }>;
};

export default async function ErrorPage({ searchParams }: ErrorPageProps) {
  const { type } = await searchParams;

  const knownErrors: KnownErrors[] = ['login-failed', 'magic-link', 'invalid_magic-link', 'recovery'];

  return (
    <div style={{ textAlign: 'center' }}>
      <h1>Ooops!</h1>
      {type === 'login-failed' && <strong>Login was not successfull, sorry.</strong>}
      {type === 'invalid_magic-link' && <strong>Magic Link Provided is invalid!</strong>}
      {type === 'magic-link' && <strong>Could not send a magic link. Maybe you had a typo in your E-Mail?.</strong>}
      {type === 'recovery' && <strong>Password could not be reset, please try again.</strong>}
      {type && !knownErrors.includes(type as KnownErrors) && <strong>Something went wrong. Please try again or contact support.</strong>}
      <br />
      <br />
      <Link role="button" href="/">
        Go back.
      </Link>
    </div>
  );
}
