import { TenantUser } from '@/types/types';
import { getSupabaseCookiesUtilClient } from '@/utils/supabase/cookiesUtilClient';
import { IconCheck, IconUserOff } from '@tabler/icons-react';

type UserListProps = {
  params: {
    tenant: string;
  };
};

export default async function UserList({ params }: UserListProps) {
  const { tenant } = await params;
  const supabase = await getSupabaseCookiesUtilClient();
  const { data, error } = await supabase.rpc('get_tenant_userlist', { tenant_id: tenant });

  const users = data as TenantUser[];

  if (error) return <div>Could not get user list!</div>;

  if (!users) return <div>There are no users</div>;

  return (
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Job</th>
        </tr>
      </thead>
      <tbody>
        {users.map((user) => (
          <tr key={user.id}>
            <td style={{ color: !user.is_available ? 'red' : undefined }}>
              {user.is_available ? <IconCheck /> : <IconUserOff />}
              {user.full_name}
            </td>
            <td>{user.job_title}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
}
