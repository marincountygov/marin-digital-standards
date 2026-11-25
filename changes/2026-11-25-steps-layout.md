# 2026-11-25 — Steps layout

Added to the interaction design page, "Steps layout":

- A workflow of steps is a collapsible vertical list, one step shown at a time.
- Each step says "Completed", "Current" or "Up next" in words. Color, weight and a bar only reinforce the words.
- No circles, numbers in shapes or icons in the list.
- Completed means earlier than the current step, and nothing is saved.
- Any step can be opened at any time. The page shows "Step 2 of 6" with a progress bar and "On this page" for the current step.

Affected standards:

- `product-design/interaction-design.md`

Implementation: Marin UI `docs/components.md` ("Steps layout") and the Marin App Shell. Marin Spec is the first app to use it.
