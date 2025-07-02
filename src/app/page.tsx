import Login from '@/components/login';
import { FORM_TYPES } from '@/types/formTypes';

type LoginPageProps = {
  searchParams: Promise<{
    [key: string]: string | string[] | undefined;
  }>;
};

export default async function Home({ searchParams }: LoginPageProps) {
  const sp = await searchParams;

  const wantsMagicLink = sp.magicLink === 'yes';
  const wantsPasswordRecovery = sp.passwordRecovery === 'yes';

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) formType = FORM_TYPES.MAGIC_LINK;
  if (wantsPasswordRecovery) formType = FORM_TYPES.PASSWORD_RECOVERY;

  return <Login formType={formType} />;
}
