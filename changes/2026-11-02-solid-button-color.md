# 2026-11-02 — Solid button color

Stated that the solid button is Marin Blue with white text, and the light accent with dark text in dark mode. Apps had been showing Pico's stock blue (`#0172ad`), which is not a palette color.

Affected standards:

- `brand/color.md`

Implementation is in `marin-ui` 1.33.0 (`--app-primary-bg`, `--app-primary-bg-hover`, `--app-on-primary`). Apps get it with the next `marin-app-shell` release that includes that bundle.
