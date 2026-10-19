# 2026-10-22 — Collapsible filter panel

Added a rule to the responsive design page: a side panel of filters can be hidden at any width without clearing the filters, the control keeps its name and shows its state, active filters stay visible in text, a hidden panel leaves the keyboard order, and anything sized by the results measures itself again.

Affected standards:

- `product-design/responsive-design.md`

First implementation is in `marin-reach` (see its `docs/decisions.md`).
