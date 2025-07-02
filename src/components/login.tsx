'use client';

import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { FORM_TYPES } from '@/types/formTypes';

export default function Login({ formType = 'pw-login' }) {
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [pass, setPass] = useState('');

  const isPasswordRecovery = formType === FORM_TYPES.PASSWORD_RECOVERY;
  const isPasswordLogin = formType === FORM_TYPES.PASSWORD_LOGIN;
  const isMagicLinkLogin = formType === FORM_TYPES.MAGIC_LINK;

  const formAction = isPasswordLogin ? '/auth/pw-login' : '/auth/magic-link';

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
      method="POST"
      action={formAction}
      onSubmit={(event) => {
        isPasswordLogin && event.preventDefault();

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
      {isPasswordRecovery && <input type="hidden" name="type" value="recovery" />}

      <article style={{ maxWidth: '480px', margin: 'auto' }}>
        <header>
          {isPasswordRecovery && <strong>Request new password</strong>}
          {!isPasswordRecovery && <strong>Login</strong>}
        </header>

        <fieldset>
          <label htmlFor="email">Email</label>
          <input type="email" id="email" name="email" value={email} required onChange={(e) => setEmail(e.target.value)} />

          {isPasswordLogin && (
            <label htmlFor="password">
              Password
              <input type="password" id="password" name="password" value={pass} onChange={(e) => setPass(e.target.value)} />
            </label>
          )}
        </fieldset>

        <button type="submit">
          {isPasswordLogin && 'Sign in with Password'}
          {isPasswordRecovery && 'Request new password'}
          {isMagicLinkLogin && 'Sign in with Magic Link'}
        </button>

        <div
          style={{
            display: 'flex',
            justifyContent: 'space-between',
            flexDirection: 'column',
            gap: '6px',
            marginBottom: '20px',
          }}
        >
          {!isPasswordLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: '/',
                query: { magicLink: 'no' },
              }}
            >
              Go to Password Login
            </Link>
          )}
          {!isMagicLinkLogin && (
            <Link
              role="button"
              className="contrast"
              href={{
                pathname: '/',
                query: { magicLink: 'yes' },
              }}
            >
              Go to Magic Link Login
            </Link>
          )}
        </div>

        {!isPasswordRecovery && (
          <Link
            href={{
              pathname: '/',
              query: { passwordRecovery: 'yes' },
            }}
            style={{
              textAlign: 'center',
              display: 'block',
            }}
          >
            Go to Password Recovery
          </Link>
        )}
      </article>
    </form>
  );
}
