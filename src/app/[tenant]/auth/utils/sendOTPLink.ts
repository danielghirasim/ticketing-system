import { getSupabaseAdminClient } from '@/utils/supabase/adminClient';
import { buildUrl } from '@/utils/url-helpers';
import { NextRequest } from 'next/server';
import nodemailer from 'nodemailer';
import { GenerateLinkResponse } from '@supabase/supabase-js';

type LinkType = 'recovery' | 'magiclink' | 'signup';
type otpDetails = {
  email: string;
  password?: string;
  type: LinkType;
};

export async function sendOTPLink(otpDetails: otpDetails, tenant: string, request: NextRequest) {
  const supabaseAdmin = getSupabaseAdminClient();
  const { email, password, type } = otpDetails;
  let supabaseResponse!: GenerateLinkResponse;

  if (type === 'magiclink' || type === 'recovery') {
    supabaseResponse = await supabaseAdmin.auth.admin.generateLink({
      email,
      type,
    });
  }

  if (type === 'signup') {
    if (!password) {
      throw new Error('Password is required for signup');
    }
    supabaseResponse = await supabaseAdmin.auth.admin.generateLink({
      email,
      type,
      password,
    });
  }

  const { data: linkData, error } = await supabaseResponse;

  const user = linkData.user;

  if (error || (user && !user.app_metadata?.tenants.includes(tenant))) {
    return false;
  }
  const { hashed_token } = linkData.properties;
  const constructedLink = buildUrl(`/auth/verify?hashed_token=${hashed_token}&type=${type}`, tenant, request);
  const transporter = nodemailer.createTransport({
    host: 'localhost',
    port: 54325,
  });

  let mailSubject = '';
  let initialSentence = '';
  let sentenceEnding = '';

  if (type === 'signup') {
    mailSubject = 'Activate your account';
    initialSentence = 'Hi there, you successfully signed up!';
    sentenceEnding = 'activate your account';
  } else if (type === 'recovery') {
    mailSubject = 'New password requested';
    initialSentence = 'Hi there, you requested a password change!';
    sentenceEnding = 'change it';
  } else {
    mailSubject = 'Magic Link requested';
    initialSentence = 'Hey, you requested a magic login link!';
    sentenceEnding = 'log in';
  }
  await transporter.sendMail({
    from: 'Your Company <your@mail.whatever>',
    to: email,
    subject: mailSubject,
    html: `
        <h1>${initialSentence}</h1>
        <p>Click <a href="${constructedLink.toString()}">here</a> to
        ${sentenceEnding}.</p>
        `,
  });
  return true;
}
