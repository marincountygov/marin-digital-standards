# 2026-10-20 — Map clusters and full window

Updated the map standards. Clustering is now allowed (nearby markers group so they do not hide each other), with one cluster look, a text count, a name that says what the cluster holds, and no hover-only coverage area. Added a full-window view that fills the browser window, closes with a visible control and the Escape key, and returns focus. Added the matching accessibility requirements and testing steps.

Affected standards:

- `product-design/maps.md`
- `accessibility/maps.md`

First implementation is in `marin-reach` (see its `docs/decisions.md`). The workflow that applies the standard is the `map-views` skill in `marin-skills`.
