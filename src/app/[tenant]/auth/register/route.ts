import { getSupabaseAdminClient } from '@/utils/supabase/adminClient';
import { buildUrl } from '@/utils/url-helpers';
import { NextRequest, NextResponse } from 'next/server';
import { sendOTPLink } from '../utils/sendOTPLink';

type RegisterProps = {
  params: {
    tenant: string;
  };
};

function isNonEmptyString(value: FormDataEntryValue | null) {
  if (!value) return false;
  return value.toString().trim().length > 0;
}

export async function POST(request: NextRequest, { params }: RegisterProps) {
  const formData = await request.formData();
  const name = formData.get('name');
  const email = formData.get('email');
  const password = formData.get('password');
  const { tenant } = await params;

  const emailRegex = /^\S+@\S+$/;

  if (!isNonEmptyString(name) || (email && !emailRegex.test(email.toString())) || !isNonEmptyString(password) || !isNonEmptyString(tenant)) {
    return NextResponse.redirect(buildUrl('/error', tenant, request), 302);
  }

  const [, emailHost] = email?.toString().split('@') || [];

  const supabaseAdmin = getSupabaseAdminClient();
  const { error } = await supabaseAdmin.from('tenants').select('*').eq('id', tenant).eq('domain', emailHost).single();
  const safeEmailString = email && encodeURIComponent(email.toString());

  if (error) {
    return NextResponse.redirect(buildUrl(`/error?type=register_mail_mismatch&email=${safeEmailString}`, tenant, request), 302);
  }

  const { data: userData, error: userError } = await supabaseAdmin.auth.admin.createUser({
    email: email?.toString(),
    password: password?.toString(),
    app_metadata: {
      tenants: [tenant],
    },
  });

  if (userError) {
    const userExists = userError.message.includes('already been registered');
    if (userExists) {
      return NextResponse.redirect(buildUrl(`/error?type=register_mail_exists&email=${safeEmailString}`, tenant, request), 302);
    } else {
      return NextResponse.redirect(buildUrl('/error?type=register_unknown', tenant, request), 302);
    }
  }

  // By chainging select and single the function will return the created data
  // We also do not really care about the error since if the previous step doesn't fail this also is highly unlikely to fail
  const { data: serviceUser } = await supabaseAdmin
    .from('service_users')
    .insert({
      full_name: name,
      supabase_user: userData.user.id,
    })
    .select()
    .single();

  const { error: tpError } = await supabaseAdmin.from('tenant_permissions').insert({
    tenant,
    service_user: serviceUser?.id,
  });

  if (tpError) {
    await supabaseAdmin.auth.admin.deleteUser(userData.user.id);
    return NextResponse.redirect(buildUrl('/error', tenant, request), 302);
  }

  await sendOTPLink({ email: email!.toString(), type: 'signup', password: password!.toString() }, tenant, request);
  return NextResponse.redirect(buildUrl(`/registration-success?email=${safeEmailString}`, tenant, request), 302);
}
