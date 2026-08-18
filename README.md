# alvinmingguw — Landing Page

Personal landing / portfolio for **alvinmingguw.biz.id**.

This repo replaces the previous setup where the landing page lived inside
`gki-connect-v2`, so the two projects are now kept fully separate. It is a
single self-contained static `index.html` (no build step) and is served via
GitHub Pages.

## Features
- 🎵 Personal music & projects showcase
- 🚀 **Services status monitoring** — the page fetches
  `https://gkiperumnas.alvinmingguw.biz.id/api/integrations/health` and renders
  live health cards for **GKI Perumnas Connect** (PostgreSQL, Drive, Calendar,
  Gmail, Sheets, YouTube, Tuya IoT, email, etc.), refreshing every 60s.
- 🔗 Links to apps, socials, and other `*.alvinmingguw.biz.id` subdomains.

## Deploy (GitHub Pages)
Pushing to `main` triggers the included workflow
(`.github/workflows/pages.yml`) which publishes the site to GitHub Pages.

1. Repo → **Settings → Pages** → Source: *GitHub Actions*.
2. Open `https://alvinmingguw.github.io/landing/`.
3. (Optional) point the `alvinmingguw.biz.id` domain / subdomain at the Pages
   URL via Cloudflare + the repo's custom domain setting.

> Note: the current live `alvinmingguw.biz.id` is still served by the
> `gki-connect-v2` backend (`public/landing-alvin.html`). To go full GitHub
> Pages, switch the DNS for `alvinmingguw.biz.id` to GitHub Pages and keep this
> repo in sync, OR keep serving from the backend and treat this repo as the
> canonical source of truth.

## Local
Just open `index.html` in a browser — no dependencies.
