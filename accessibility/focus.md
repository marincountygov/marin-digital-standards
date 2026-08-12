# Focus

Focus must always be visible, and its movement must always be deliberate — never silently removed, never silently redirected.

## Requirements

- Every focusable element has a visible focus indicator. If a browser/platform default is restyled, it's replaced with an equally or more visible alternative (e.g. `:focus-visible { outline: 3px solid currentColor; outline-offset: 2px; }`) — never removed outright (`outline: none` with nothing replacing it is not acceptable).
- Focus order follows visual and logical reading order. Don't let CSS positioning silently reorder what a keyboard user encounters.
- When a modal dialog opens, focus moves into it; while open, focus is contained inside it; on close, focus returns to the control that triggered it.
- After a route change in a single-page application, move focus to a meaningful location (typically the new page's heading) so a screen reader user isn't left wherever they happened to be.
- Never move focus unexpectedly while a user is typing or reading — a background update should not steal focus from an active field.
- After a dynamic update (save, filter, async load), focus is not lost or reset to the top of the page without reason.
- Focusable elements are never placed inside a hidden container (`hidden`, `display: none`, or an unopened panel) — if it's not visible, it's not tabbable either.

## WCAG mapping

2.4.7 Focus Visible, 2.4.11 Focus Not Obscured (Minimum), 2.4.3 Focus Order. See `wcag-2.2-mapping.md` for the full table.
