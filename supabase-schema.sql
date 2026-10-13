-- Config India Planner: private user-owned notes
-- Run in Supabase Dashboard > SQL Editor.
create table if not exists public.planner_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.planner_data enable row level security;
drop policy if exists "Users can read their own planner" on public.planner_data;
create policy "Users can read their own planner"
  on public.planner_data for select to authenticated
  using ((select auth.uid()) = user_id);
drop policy if exists "Users can insert their own planner" on public.planner_data;
create policy "Users can insert their own planner"
  on public.planner_data for insert to authenticated
  with check ((select auth.uid()) = user_id);
drop policy if exists "Users can update their own planner" on public.planner_data;
create policy "Users can update their own planner" on public.planner_data for update to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);
