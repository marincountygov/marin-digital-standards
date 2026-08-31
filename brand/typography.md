# Typography

## Approved typefaces

- **Futura** — appears in official logo/logotype artwork. Do not substitute or alter the typography inside official logo artwork.
- **Open Sans** — required body and user-interface typeface for MarinOS applications and app templates. MarinOS apps must load Open Sans from local first-party assets, not from Google Fonts or another runtime font service.
- **Jost** — approved MarinOS heading/display typeface when supplied by `marin-ui`. Do not use Jost for ordinary body copy.
- **Arial Regular** — preferred for general print body copy; default for routine documents and print collateral unless a template specifies otherwise.
- **Georgia** — may be used sparingly when a formal serif treatment is needed.
- **Verdana** — identified in the published guide as the website typeface. For MarinOS applications, Open Sans supersedes Verdana as the body/UI font while Verdana remains an acceptable fallback.

## MarinOS application typography

MarinOS applications use a two-role typography model:

1. **Body and interface text:** Open Sans.
2. **Headings and product display text:** Jost, as implemented by `marin-ui`.

Open Sans is the standard for paragraphs, form controls, buttons, labels, tables, helper text, alerts, navigation text, and other routine interface copy. Components should inherit the body/UI font rather than declaring unrelated font stacks.

MarinOS implementations must self-host Open Sans as a local application asset. The expected path in `marin-ui`, `marin-app-template`, and generated apps is:

```text
vendor/fonts/open-sans/OpenSans-VariableFont_wdth,wght.woff2
vendor/fonts/open-sans/OFL.txt
```

The font must not be loaded from `fonts.googleapis.com`, `fonts.gstatic.com`, Adobe Fonts, jsDelivr, unpkg, cdnjs, or another runtime CDN/font service.

## Hierarchy

For most County materials: one clear primary title, short section headings, body text visually subordinate to headings, and consistent treatment of labels/captions/dates/source notes. Avoid excessive bold, all-caps, underlining, drop shadows, outlines, and other decorative effects — restraint is the standard, not an afterthought.

For MarinOS applications, preserve hierarchy primarily through semantic heading levels, scale, weight, line-height, spacing, and the standard `marin-ui` tokens. Do not create a custom font hierarchy inside a single app unless the design has been approved as a specific exception.

## Related standards

- `marin-digital-standards/product-design/runtime-dependencies.md` — runtime dependency rules, including the no-external-font/CDN rule for application assets.
- `marin-digital-standards/content-design/interface-writing.md` — heading *case* (AP-style sentence case) is a content-design rule, not a typography one; this document covers typeface and visual hierarchy only.
- `color.md` — how palette colors interact with text.
- `marin-ui` — implementation source of truth for design tokens, `@font-face` declarations, and component CSS.
