# Color and contrast

## Requirements

- Text and meaningful graphics meet contrast minimums: normal text, large text, icons/graphical controls, and focus indicators are each checked — a control that "looks" active but reads as disabled-contrast is a real failure, not a style choice.
- Text over images is checked the same way as text on a solid background; a background photo is not an exemption from contrast requirements.
- Never communicate status, meaning, or required state through color alone. A red dot next to "Required" needs the word "Required" too, not just the color.
- Charts and data visualizations use text labels, patterns, direct labeling, or shape — not color-coded legends alone — to distinguish series.
- Accent-colored text on a tint of that same accent (a current nav link, a hovered menu item, a pressed filter) is checked against the *tint*, not the page background — the raw accent on its own 8-14% tint is only about 3.6-4.2:1 in light mode, short of 4.5:1. Use the darker `--app-accent-on-tint` token from `marin-ui` instead.
- Check every color pair in both light and dark mode. A pair that passes in one theme can fail in the other (white text on the dark-mode accent, a light blue, is 1.7:1). Automated scanners such as Lighthouse test light mode only, so dark mode needs its own numeric check.
- `marin-ui`'s `scripts/check-contrast.js` checks the real color-token pairs in both themes (and runs in the App Shell's checks); add a pair to it when a new component puts one token color on another.
- Support forced-colors / high-contrast modes: graphics that rely on color (a gauge ring, a status dot) must still show their text and number there.
- When exact color values aren't available for review (e.g. reviewing a mockup or screenshot), flag contrast as needing validation rather than assuming it passes.

## WCAG mapping

1.4.3 Contrast (Minimum), 1.4.11 Non-text Contrast, 1.4.1 Use of Color. See `wcag-2.2-mapping.md` for the full table.
