'use client';
import Link from 'next/link';
import { useState } from 'react';

type LoginProps = {
  isPasswordLogin: boolean;
};
export default function Login({ isPasswordLogin }: LoginProps) {
  const [email, setEmail] = useState('');
  const [pass, setPass] = useState('');

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        if (isPasswordLogin) {
          alert('User wants to login with password');
        } else {
          alert('User wants to login with magic link');
        }

        setEmail('');
        setPass('');
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
              <Link href={{ pathname: '/login', query: { magicLink: 'yes' } }}>Go to Magic Link</Link>
            ) : (
              <Link
                href={{
                  pathname: '/login',
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
