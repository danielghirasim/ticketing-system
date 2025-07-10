import { Tables } from './supabase';

export type TenantUser = Pick<Tables<'service_users'>, 'id' | 'full_name' | 'job_title' | 'is_available'>;
