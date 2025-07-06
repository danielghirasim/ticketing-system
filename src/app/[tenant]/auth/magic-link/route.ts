import { getSupabaseAdminClient } from '@/utils/supabase/adminClient';
import { buildUrl } from '@/utils/url-helpers';
import { NextRequest, NextResponse } from 'next/server';
import { sendOTPLink } from '../utils/sendOTPLink';

export async function POST(request: NextRequest, { params }: { params: { tenant: string } }) {
  const { tenant } = await params;
  const formData = await request.formData();
  const email = formData.get('email') as string;
  const supabaseAdmin = getSupabaseAdminClient();
  const type = formData.get('type') === 'recovery' ? 'recovery' : 'magiclink';

  const tenantUrl = (path: string) => buildUrl(path, tenant, request);

  const { data: linkData, error } = await supabaseAdmin.auth.admin.generateLink({
    email,
    type,
  });

  if (error || !linkData.user.app_metadata.tenants.includes(tenant)) {
    return NextResponse.redirect(tenantUrl(`/error?type=${type}`), 302);
  }

  const errorUrl = buildUrl(`/error?type=${type}`, params.tenant, request);
  const thanksUrl = tenantUrl(`/magic-thanks?type=${type}`);

  const otpSucess = await sendOTPLink({ email, type }, tenant, request);

  if (!otpSucess) {
    return NextResponse.redirect(errorUrl);
  } else {
    return NextResponse.redirect(thanksUrl);
  }
}
