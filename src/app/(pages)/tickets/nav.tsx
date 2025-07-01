'use client';
import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useRouter } from 'next/navigation';
import { useEffect } from 'react';

const activeProps = { className: 'contrast' };
const inactiveProps = { className: 'secondary outline' };

export default function Nav() {
  const pathname = usePathname();
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_OUT') {
        router.push('/');
      }
    });

    return () => subscription.unsubscribe();
  }, [router, supabase.auth]);

  return (
    <nav>
      <ul>
        <li>
          <Link role="button" href="/tickets" {...(pathname === '/tickets' ? activeProps : inactiveProps)}>
            Ticket List
          </Link>
        </li>
        <li>
          <Link role="button" href="/tickets/new" {...(pathname === '/new' ? activeProps : inactiveProps)}>
            Create new Ticket
          </Link>
        </li>
        <li>
          <Link role="button" href="/tickets/users" {...(pathname === '/users' ? activeProps : inactiveProps)}>
            User List
          </Link>
        </li>
      </ul>
      <ul>
        <li>
          <Link
            role="button"
            href="/logout"
            className="secondary"
            prefetch={false}
            onClick={(event) => {
              event.preventDefault();
              supabase.auth.signOut();
            }}
          >
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
