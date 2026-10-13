# Deployment checklist

The site deploys from the `main` branch via `.github/workflows/pages.yml`.

If the workflow has not run automatically:
1. Open **Actions** → **Deploy planner to GitHub Pages**.
2. Choose **Run workflow**, branch **main**, then confirm.
3. The workflow attempts to enable GitHub Pages automatically. If that fails, open **Settings → Pages** and set **Source = GitHub Actions**, then run the workflow again.

After the site is live, set Supabase **Authentication → URL Configuration**:
- Site URL: `https://yasaswini38.github.io`
- Redirect URL: `https://yasaswini38.github.io/config-india-planner/`

Run `supabase-schema.sql` in Supabase **SQL Editor** before signing in. The app's publishable key is public by design; table row-level security is what keeps planner records private to each signed-in user.
