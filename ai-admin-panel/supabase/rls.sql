-- Enable RLS for all tables
alter table public.users enable row level security;
alter table public.clients enable row level security;
alter table public.interactions enable row level security;
alter table public.admins_activity_log enable row level security;

-- Create policies for the users table
create policy "Users can view their own data" on public.users for select using (auth.uid() = id);
create policy "Superadmins can view all users" on public.users for select using (exists (select 1 from public.users where id = auth.uid() and role = 'superadmin'));

-- Create policies for the clients table
create policy "Admins can view their own clients" on public.clients for select using (auth.uid() = invited_by);
create policy "Superadmins can view all clients" on public.clients for select using (exists (select 1 from public.users where id = auth.uid() and role = 'superadmin'));

-- Create policies for the interactions table
create policy "Admins can view their own interactions" on public.interactions for select using (auth.uid() = user_id);
create policy "Superadmins can view all interactions" on public.interactions for select using (exists (select 1 from public.users where id = auth.uid() and role = 'superadmin'));

-- Create policies for the admins_activity_log table
create policy "Admins can view their own activity" on public.admins_activity_log for select using (auth.uid() = user_id);
create policy "Superadmins can view all activity" on public.admins_activity_log for select using (exists (select 1 from public.users where id = auth.uid() and role = 'superadmin'));
