-- Create the users table
create table users (
  id uuid references auth.users not null primary key,
  name text,
  email text,
  role text default 'admin'
);

-- Create the clients table
create table clients (
  id bigserial primary key,
  invited_by uuid references public.users,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  source text
);

-- Create the interactions table
create table interactions (
  id bigserial primary key,
  user_id uuid references public.users,
  timestamp timestamp with time zone default timezone('utc'::text, now()) not null,
  message text,
  response text,
  sentiment real,
  duration integer,
  channel text,
  is_lead boolean default false
);

-- Create the admins_activity_log table
create table admins_activity_log (
  id bigserial primary key,
  user_id uuid references public.users,
  date date not null,
  actions_count integer
);
