# 2026-11-26 — One h1 on a page below the home page

Added to the typography page:

- A page below an app's home page that has its own title has that title as its one h1.
- The header on such a page shows the app name as plain text that still links home, so the page does not have two h1s.

Affected standards:

- `brand/typography.md`

Implementation: Marin UI `docs/components.md` ("Heading sizes") and App Shell 2.9.0 (`title-heading="false"` on `<marin-app-header>`). Every guide, regulation and procedure page in Marin Docs (94 pages) had two h1s and now has one.
