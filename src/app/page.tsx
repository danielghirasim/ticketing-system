import Login from '@/components/login';

type LoginPageProps = {
  searchParams: Promise<{
    [key: string]: string | string[] | undefined;
  }>;
};

export default async function Home({ searchParams }: LoginPageProps) {
  const sp = await searchParams;

  const wantsMagikLink = sp.magicLink === 'yes';
  return <Login isPasswordLogin={!wantsMagikLink} />;
}
