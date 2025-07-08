import Login from '@/components/login';
import { FORM_TYPES } from '@/types/formTypes';
import { getSupabaseAdminClient } from '@/utils/supabase/adminClient';
import { notFound } from 'next/navigation';

type LoginPageProps = {
  searchParams: Promise<{
    [key: string]: string | string[] | undefined;
  }>;
  params: {
    tenant: string;
  };
};

export default async function LoginPage({ searchParams, params }: LoginPageProps) {
  const { magicLink, passwordRecovery } = await searchParams;
  const { tenant } = await params;
  const supabaseAdmin = getSupabaseAdminClient();
  const { data, error } = await supabaseAdmin.from('tenants').select('*').eq('id', tenant).single();
  const { domain: tenantDomain } = data;

  if (error) notFound();

  const { name: tenantName } = data;

  const wantsMagicLink = magicLink === 'yes';
  const wantsPasswordRecovery = passwordRecovery === 'yes';

  let formType = FORM_TYPES.PASSWORD_LOGIN;
  if (wantsMagicLink) formType = FORM_TYPES.MAGIC_LINK;
  if (wantsPasswordRecovery) formType = FORM_TYPES.PASSWORD_RECOVERY;

  return <Login formType={formType} tenant={tenant} tenantName={tenantName} tenantDomain={tenantDomain} />;
}
