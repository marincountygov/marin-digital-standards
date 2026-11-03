# 2026-11-02 — Step flow buttons

Added a rule to the Buttons section of the interaction design page: in a step-by-step flow, Next is the main action. It keeps its words, names the next step in lowercase ("Next: coverage"), and ends with a right arrow. Previous sits beside it as a quiet, icon-only button with a left arrow, the same as Copy, Print and Download, named "Previous: details" and so on.

Affected standards:

- `product-design/interaction-design.md`

Implementation is in Marin Mentions reports and Marin Spec. The shell draws the arrows (`data-icon-end`, `data-icon`). Marin App Shell 1.23.0 sizes the arrow on the solid Next button; an app on an older release sizes it itself.

Where the steps sit is a layout choice, not a standard: a short flow inside one feature shows its steps as a row above the content (Marin Mentions reports), and an app whose whole workflow is the steps puts them in the collapsible left column (Marin Spec). Both number the steps "1. Name" and highlight the current one.
