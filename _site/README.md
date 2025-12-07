# casualuser.github.io

## Webomage site notes

This repo contains the `webomage.com` Jekyll site plus some custom tooling for analytics, heatmaps, and the golden-ratio-based logo.

### Analytics & heatmap

- **Supabase functions & schema** live in the sibling repo `api.webomage.com`:
  - Edge functions: `supabase/functions/log-event`, `supabase/functions/heatmap-event`.
  - DB tables & migrations: `supabase/migrations/*_analytics_events.sql`, `*_heatmap_events.sql`.
  - Saved queries: `supabase/queries/analytics_dashboard_queries.sql`.
- **Client-side includes** in this repo:
  - Pageview tracking: `_includes/analytics-log-event.html`.
  - CTA click tracking: `_includes/analytics-cta-tracking.html`.
  - Heatmap overlay + click logging: `_includes/analytics-heatmapjs.html`.
- All three snippets are wired in via `_layouts/default.html`.

To re-deploy analytics from scratch:
1. Apply Supabase migrations from `api.webomage.com/supabase/migrations`.
2. Deploy the edge functions from `api.webomage.com/supabase/functions`.
3. (Optional) Recreate Saved Queries in the Supabase UI using `supabase/queries/analytics_dashboard_queries.sql`.

### Logo, colors, and golden-ratio guides

- Main logo SVG: `assets/logo.svg`.
  - Uses CSS keyword colors: DodgerBlue, ForestGreen, DarkOrange.
- Concept and design notes (including W/O/M element metaphors and φ guides): `assets/logo.txt`.
- Golden grid / spiral check overlay: `assets/logo_check.svg` (ignored by Git via `.gitignore`).

### Favicon set

- Vector favicon: `assets/logo.svg` (linked as `image/svg+xml`).
- Raster favicons:
  - `assets/favicon-16.png`
  - `assets/favicon-32.png`
  - `assets/apple-touch-icon-180.png`
- HTML wiring lives in `_includes/head.html`.
