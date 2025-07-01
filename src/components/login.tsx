'use client';

import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';

type LoginProps = {
  isPasswordLogin: boolean;
};
export default function Login({ isPasswordLogin }: LoginProps) {
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [pass, setPass] = useState('');

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_IN') {
        router.push('/tickets');
      }
    });

    return () => subscription.unsubscribe();
  }, [router, supabase.auth]);

  return (
    <form
      action={isPasswordLogin ? 'auth/pw-login' : 'auth/magic-link'}
      method="post"
      onSubmit={(event) => {
        if (isPasswordLogin) event.preventDefault();

        if (isPasswordLogin) {
          supabase.auth
            .signInWithPassword({
              email: email,
              password: pass,
            })
            .then((result) => {
              !result.data?.user && alert('Could not sign in');
            });

          setEmail('');
          setPass('');
        }
      }}
    >
      <article style={{ maxWidth: '480px', margin: 'auto' }}>
        <header>Login</header>

        <fieldset>
          <label htmlFor="email">Email</label>
          <input type="email" id="email" name="email" value={email} required onChange={(e) => setEmail(e.target.value)} />

          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input type="password" id="password" name="password" value={pass} onChange={(e) => setPass(e.target.value)} />
            </label>
          )}

          <p>
            {isPasswordLogin ? (
              <Link href={{ pathname: '/', query: { magicLink: 'yes' } }}>Go to Magic Link</Link>
            ) : (
              <Link
                href={{
                  pathname: '/',
                  query: { magicLink: 'no' },
                }}
              >
                Go to Password Login
              </Link>
            )}
          </p>
        </fieldset>

        <button type="submit">
          Sign in with
          {isPasswordLogin ? ' Password' : ' Magic Link'}
        </button>
      </article>
    </form>
  );
}
