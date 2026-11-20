# 2026-11-20 — Filters are multi-select unless the choices exclude each other

Added to the interaction design page, "Filtering, sorting and saying what is shown":

- A filter lets people combine choices with checkboxes. An item shows when it has any chosen value in a filter, and it must match every filter that has a choice.
- A choice of one (a drop-down or radio buttons) is only for choices that cannot be combined because something confines them: a time range, a year, a version, a budget book.
- Themes, departments, categories and statuses are never a drop-down.

Affected standards:

- `product-design/interaction-design.md`

Implementation: Marin UI `docs/components.md` ("Filter column"), the `marin-app-builder` skill and the `marin-app-template` starter. Marin Learn's Themes filter changed from a drop-down to checkboxes.
