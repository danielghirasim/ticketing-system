'use client';

import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { urlPath } from '@/utils/url-helpers';
import { useParams, useRouter } from 'next/navigation';
import { useState } from 'react';

export default function ChangePasswordPage() {
  const [pass, setPass] = useState('');
  const router = useRouter();
  const params = useParams();
  const supabase = getSupabaseBrowserClient();

  const tenant = params.tenant as string;

  return (
    <form
      onSubmit={(event) => {
        event.preventDefault();
        const value = pass.trim();

        supabase.auth.updateUser({ password: value }).then((result) => {
          if (result.error) {
            alert(result.error.message);
          } else {
            alert('Password updated!');
            setPass('');
            router.push(urlPath('/tickets', tenant));
          }
        });
      }}
    >
      <fieldset>
        <label htmlFor="password">
          New Password <input name="password" type="password" id="password" value={pass} onChange={(e) => setPass(e.target.value)} required />
        </label>
      </fieldset>

      <button type="submit">Reset Password</button>
    </form>
  );
}
