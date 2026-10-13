# My Config Day

Mobile-first planner for Figma Config India, Bengaluru (15 October 2026).

## What it has
- Session itinerary and checklist
- Session note templates
- People/networking tracker
- End-of-day recap
- Local browser saving, text/JSON export, and backup import
- Share link through the phone's native share sheet / WhatsApp

## Current status
This commit adds the standalone app. Local saves use browser localStorage. Cross-device cloud sync is **not enabled until** Supabase Auth + database integration are completed and tested.

## Supabase secure storage setup
1. Open the project's SQL Editor.
2. Paste and run `supabase-schema.sql`.
3. Enable Email OTP or magic-link sign-in in Authentication settings.
4. Confirm RLS is enabled and policies restrict all rows to `auth.uid() = user_id`.
5. Configure the app with the Supabase Project URL and publishable/anon key only. Never put a service-role key in client-side code.

## Hosting
Publish this static app on GitHub Pages from repository Settings → Pages → Deploy from a branch → main / root. The public page itself must not contain private notes, tokens, passwords, or a service-role key.

## Download / WhatsApp
Download `index.html` from the repository (Raw → Save) or use a downloadable planner supplied in ChatGPT. Use WhatsApp's Document attachment to send the downloaded HTML file, and send the live URL separately.
