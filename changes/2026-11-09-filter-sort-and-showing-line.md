# 2026-11-09 — Filter title, sort buttons and the Showing line

Added a section to the interaction design page, "Filtering, sorting and saying what is shown":

- The filter column is titled "Filter", not "Filter" plus the thing filtered ("Filter Mentions", "Filter software").
- Sort is a group of icon buttons at the start of the toolbar, as in Marin Reach, not a dropdown in the filter column.
- The "Showing:" line (bold, under the tabs, above the toolbar) is the only count of results. No "N of M" text.

Affected standards:

- `product-design/interaction-design.md`

Implementation: Marin UI `docs/components.md` (Filter column, Results header) and the `marin-app-builder` skill. Marin Mentions, Marin Reach and the Marin Docs Vendors tool follow it. Marin Mentions and the software search in Marin Docs still show the longer "Filter Mentions" and "Filter software" titles and should change to "Filter" the next time they are touched.
