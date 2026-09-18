# Iconography

## Approved icon system

**Lucide** — required icon library for MarinOS applications. Use Lucide's own SVG conventions: `viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"`, one `<svg>` per icon, path data copied verbatim from the source icon.

Before Lucide, icons in MarinOS apps were hand-drawn inline SVG, invented ad hoc per component with no shared library — that produced inconsistent stroke weights, viewBoxes, and visual style across apps. Lucide replaces that with one licensed, consistent icon language.

## Self-hosting requirement

MarinOS applications must self-host icon assets, the same rule that applies to fonts (see `typography.md` and `product-design/runtime-dependencies.md`). Do not load Lucide from a CDN or npm-at-runtime — no `unpkg.com`, `cdn.jsdelivr.net`, `cdnjs.cloudflare.com`, or the `lucide` npm package's browser bundle fetched at runtime.

The controlling implementation belongs in `marin-ui`, at `vendor/icons/lucide/` — one `.svg` file per icon in use, plus Lucide's `LICENSE` (ISC, with a Feather-project MIT sublicense for certain icons — the vendored `LICENSE` file lists which). Vendor only the icons actually in use; grow the folder over time rather than mirroring the full ~1,500-icon library upfront.

## One icon per app, reused in three places

Each app has exactly one icon, defined once and reused everywhere that app is represented:

1. The app's own header `.app-icon`.
2. The app's favicon (inlined as a `data:image/svg+xml` URI, wrapped in the standard rounded-square treatment).
3. `marin-os/catalog.json`'s `icon` field for that app, which feeds the cross-app nav dropdown and the marin-os directory page.

Before this standard, some apps had a distinctive icon in `catalog.json` but a generic favicon/header icon, or a generic icon everywhere. Pick the closest stock Lucide icon to what the app does; don't invent a bespoke shape when a reasonable match exists in Lucide's set.

## Related standards

- `typography.md` — the equivalent self-hosting rule for fonts.
- `product-design/runtime-dependencies.md` — runtime dependency rules, including the no-external-CDN rule for icon libraries.
- `marin-ui` — implementation source of truth for vendored icon files and the `docs/components.md` "App icon" convention.
