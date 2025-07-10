'use client';

import { TenantUser } from '@/types/types';
import { getSupabaseBrowserClient } from '@/utils/supabase/browserClient';
import { useEffect, useState } from 'react';

type AsigneeSelectProps = {
  tenant: string;
  onValueChanged: (v: number | null) => void;
  initialValue?: number | null;
};

export function AssigneeSelect({ tenant, onValueChanged, initialValue }: AsigneeSelectProps) {
  const [users, setUsers] = useState<TenantUser[]>([]);
  const supabase = getSupabaseBrowserClient();

  useEffect(() => {
    const fetchUsers = async () => {
      const { data, error } = await supabase.rpc('get_tenant_userlist', {
        tenant_id: tenant,
      });

      if (error) {
        console.error('Failed to fetch users:', error);
        return;
      }

      setUsers((data ?? []) as TenantUser[]);
    };

    if (tenant) fetchUsers();
  }, [tenant, supabase]);

  return (
    <select
      name="assignee"
      disabled={users === null}
      value={String(initialValue)}
      onChange={async (e) => {
        const v = +e.target.value;
        onValueChanged(v);
      }}
    >
      <option value="">{!users.length ? 'Loading...' : 'No assignee'}</option>
      {users &&
        users.map((user) => {
          return (
            <option key={user.id} value={user.id}>
              {user.full_name}
            </option>
          );
        })}
    </select>
  );
}
