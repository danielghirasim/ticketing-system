'use client';
import Link from 'next/link';
import { usePathname } from 'next/navigation';

const activeProps = { className: 'contrast' };
const inactiveProps = { className: 'secondary outline' };

export default function Nav() {
  const pathname = usePathname();
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
          <Link role="button" href="/logout" className="secondary">
            Log out
          </Link>
        </li>
      </ul>
    </nav>
  );
}
