import Link from 'next/link';

export default async function Home() {
  return (
    <div>
      <Link href="/login">Go To login page</Link>
    </div>
  );
}
