type RegisterPageProps = {
  params: {
    tenant: string;
  };
};

export default async function RegisterPage({ params }: RegisterPageProps) {
  const { tenant } = await params;
  return <strong>Registration Page of Tenant-ID={tenant}</strong>;
}
