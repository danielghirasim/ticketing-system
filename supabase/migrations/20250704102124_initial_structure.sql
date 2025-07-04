drop policy "can read tenant if has permission" on "public"."tenants";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.custom_access_token_hook(event jsonb)
 RETURNS jsonb
 LANGUAGE plpgsql
AS $function$
DECLARE
claims jsonb;
user_id uuid;
BEGIN
user_id := (event->>'user_id')::uuid;
claims := event->'claims';
-- Check if 'app_metadata' exists in claims
if jsonb_typeof(claims->'app_metadata') is null then
-- If 'app_metadata' does not exist, create an empty object
claims := jsonb_set(claims, '{app_metadata}', '{}');
end if;
-- Set a claim 'user_id_test' with the value of the user_id
claims := jsonb_set(claims, '{app_metadata, user_id_test}',
to_jsonb(user_id::text));
-- Update the 'claims' object in the original event
event := jsonb_set(event, '{claims}', claims);
-- Return the modified or original event
RETURN event;
END;
$function$
;

create policy "can read tenant if has permissions"
on "public"."tenants"
as permissive
for select
to authenticated
using (COALESCE((((auth.jwt() -> 'app_metadata'::text) -> 'tenants'::text) ? id), false));



