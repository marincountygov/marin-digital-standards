# Responsive design

None of the source skills this migration drew from had a dedicated responsive-design standard — this document is intentionally brief rather than inventing detail that isn't established practice yet.

## Principle

Treat mobile as a primary access path for resident services, not a secondary one to accommodate afterward. Many residents' only access to a County service is a phone. A flow, form, or page that works well on desktop and merely "doesn't break" on mobile hasn't met the bar — the primary action needs to be as clear and completable on a small screen as on a large one.

## What's already covered elsewhere

The concrete mechanics of responsive behavior are accessibility requirements, not a separate responsive-design layer:

- Content reflow at narrow viewports and 200% zoom, without loss of information or horizontal scroll — `marin-digital-standards/accessibility/standard.md`.
- Touch target size and spacing — `marin-digital-standards/accessibility/keyboard.md`.
- Mobile navigation must remain keyboard-accessible, and hover-only content must have a touch/keyboard equivalent — `marin-digital-standards/accessibility/keyboard.md`.

## Page-level navigation stays in normal document flow

A header or nav bar must not be `position: sticky` or `fixed` while the page scrolls — it scrolls away with the rest of the content like everything else. This applies to every page-level header (`marin-ui`'s `.app-header`, `.site-header`, and the MarinOS banner). A sidebar "on this page" reference list (`.toc`/`.docs-toc`) is a different, accepted pattern — a side list that scrolls alongside the reader isn't the same as a persistent top bar, and may stay sticky.

## A filter panel can be collapsed

When a page has a side panel of filters next to its results, the person can hide it, at every screen width, so the results can use the whole row. Hiding the panel never clears or changes the filters, and the page still says that filters are active (a count on the control, and the summary of what is shown). The control is a button with a name that stays the same ("Filters"), a state exposed with `aria-expanded`, and an icon that shows whether the panel is open or hidden; it sits where it is still there when the panel is hidden, and keeps focus when used. A hidden panel is removed from the keyboard order. On narrow screens the panel starts hidden; on wide screens it starts open and the person's choice may be remembered in the browser. Anything that depends on the width of the results (a map, a chart) measures itself again when the panel changes.

## What this document doesn't yet cover

Breakpoint strategy, content-priority reordering for narrow viewports, and image/asset responsiveness aren't established as County-wide standards yet — these are currently `marin-ui` implementation choices rather than policy. Add to this document if a genuine cross-product standard emerges.
