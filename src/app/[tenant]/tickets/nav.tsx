'use client';
import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { urlPath } from '@/utils/url-helpers';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { useRouter } from 'next/navigation';
import { useEffect } from 'react';

const activeProps = { className: 'contrast' };
const inactiveProps = { className: 'secondary outline' };

export default function Nav({ tenant }: { tenant: string }) {
  const pathname = usePathname();
  const supabase = getSupabaseBrowserClient();
  const router = useRouter();

  useEffect(() => {
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event) => {
      if (event === 'SIGNED_OUT') {
        router.push(urlPath('/', tenant));
      }
    });

    return () => subscription.unsubscribe();
  }, [router, supabase.auth, tenant]);

  return (
    <nav>
      <ul>
        <li>
          <Link role="button" href={urlPath('/tickets', tenant)} {...(pathname === urlPath('/tickets', tenant) ? activeProps : inactiveProps)}>
            Ticket List
          </Link>
        </li>
        <li>
          <Link role="button" href={urlPath('/tickets/new', tenant)} {...(pathname === urlPath('/tickets/new', tenant) ? activeProps : inactiveProps)}>
            Create new Ticket
          </Link>
        </li>
        <li>
          <Link role="button" href={urlPath('/tickets/users', tenant)} {...(pathname === urlPath('/tickets/users', tenant) ? activeProps : inactiveProps)}>
            User List
          </Link>
        </li>
      </ul>
      <ul>
        <li>
          <Link
            role="button"
            href={urlPath('/logout', tenant)}
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
