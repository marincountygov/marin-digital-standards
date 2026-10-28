# 2026-10-28 — Text, characters, copy and upload

Added a standard for the text people bring in, copy out and save: clean HTML on the clipboard (no page styles, no `<strong>` unless the content means bold), UTF-8 then Windows-1252 file reading, plain characters for anything that goes to a CMS, URL or CSV, a byte-order mark on CSV downloads, Copy and Download menus that list Text, HTML, then Markdown, and one upload pattern.

Affected standards:

- `product-design/text-characters-copy-and-upload.md` (new)
- `product-design/forms.md`
- `product-design/README.md`

Implementation is in `marin-app-shell` 1.21.0 (`marinCopyRich`, `marinCopyText`, `marinDownload`, `marinReadText`, `marinCleanText`, `marinUpload`).
