# Responsive design

None of the source skills this migration drew from had a dedicated responsive-design standard — this document is intentionally brief rather than inventing detail that isn't established practice yet.

## Principle

Treat mobile as a primary access path for resident services, not a secondary one to accommodate afterward. Many residents' only access to a County service is a phone. A flow, form, or page that works well on desktop and merely "doesn't break" on mobile hasn't met the bar — the primary action needs to be as clear and completable on a small screen as on a large one.

## What's already covered elsewhere

The concrete mechanics of responsive behavior are accessibility requirements, not a separate responsive-design layer:

- Content reflow at narrow viewports and 200% zoom, without loss of information or horizontal scroll — `marin-digital-standards/accessibility/standard.md`.
- Touch target size and spacing — `marin-digital-standards/accessibility/keyboard.md`.
- Mobile navigation must remain keyboard-accessible, and hover-only content must have a touch/keyboard equivalent — `marin-digital-standards/accessibility/keyboard.md`.

## What this document doesn't yet cover

Breakpoint strategy, content-priority reordering for narrow viewports, and image/asset responsiveness aren't established as County-wide standards yet — these are currently `marin-ui` implementation choices rather than policy. Add to this document if a genuine cross-product standard emerges.
