# 2026-11-20 — The filter column is drawn from a file

Added to the interaction design page, "Filtering, sorting and saying what is shown":

- Only a page with a list to search or filter has a filter column. A page opened from a catalog has none.
- The filter column is drawn by the shared shell from one `filters.json` per app, not written by hand in each app. Sidebar markup copied from another app is not allowed, and a check fails if an app does it.
- Every filter shows its name as a plural noun. A filter with nothing chosen reads "All" and the plural noun.
- No search box or other field has placeholder text. The visible label names it.
- The accessibility of the column (focus, scrolling, announcing results, offering Reset, never disabling an option) belongs to the shared component, so an app cannot get it wrong.

Affected standards:

- `product-design/interaction-design.md`

Implementation: Marin UI `schemas/filter-panel.schema.json` and `docs/components.md` ("Filter column"), Marin App Shell 2.0.0 (`vendor/marinos/audit-filter-column.py`), the `marin-app-builder` skill and the `marin-app-template` starter. Marin Jobs, Marin Software, Marin Mentions, Marin Reach and Marin Learn follow it; other apps follow it the next time they are touched.
