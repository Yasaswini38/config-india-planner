# My Config Day

Mobile-first planner for Figma Config India, Bengaluru (15 October 2026).

## Features
- Event itinerary and checklist
- Session note templates
- People / networking tracker
- End-of-day recap
- Local browser saving and text/JSON export + import
- Supabase email-link sign-in for per-user cloud sync
- Share through the native phone share sheet / WhatsApp

## 1. Deploy with GitHub Pages
1. Open this repository's **Settings → Pages**.
2. Under **Build and deployment → Source**, select **GitHub Actions**.
3. The workflow in `.github/workflows/pages.yml` deploys the root folder on every push to `main`.
4. Wait for the workflow to complete. The site URL should be `https://yasaswini38.github.io/config-india-planner/`.

## 2. Configure private cloud storage in Supabase
1. Open the project's **SQL Editor**.
2. Paste the contents of `supabase-schema.sql` and click **Run**. This creates a table with row-level security; each signed-in user can access only their own row.
3. In **Authentication → URL Configuration**, set the Site URL to `https://yasaswini38.github.io` and add this Redirect URL: `https://yasaswini38.github.io/config-india-planner/`.
4. In **Authentication → Providers**, make sure Email sign-in is enabled.
5. Return to the live planner, open **Sync & backup**, enter your email and request a sign-in link. Open it to sign in.
6. Test saving a note, open the planner on another device, sign in with the same email and confirm that it loads.

The browser uses only the Supabase **Project URL and publishable key**. Never add a database password or service-role/secret key to client-side code. Access control depends on the RLS policies in `supabase-schema.sql`.

## Local backup and WhatsApp
- The live website syncs data to Supabase after you sign in and the SQL setup is complete.
- A downloaded HTML file can keep local browser notes, but cloud sign-in should be done from the live HTTPS website.
- Use **Sync & backup → Export backup (.txt)** or **Export data (.json)** to save your notes. Attach the downloaded `index.html` using WhatsApp's **Document** option, and share the live URL separately.
