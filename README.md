# Marin Digital Standards

Canonical source of truth for Marin's digital product standards.

This repo answers: **what principles, requirements, and conventions should Marin digital products follow?**

It does not contain implementation. CSS, JavaScript, components, app templates, AI prompts, Skill workflows, or full copies of external standards (like WCAG) belong elsewhere:

- **[marin-ui](https://github.com/marincountygov/marin-ui)** implements these standards as reusable interface code, components, patterns, and templates.
- **[marin-skills](https://github.com/marincountygov/marin-skills)** teaches AI how to create, review, and improve work using these standards and Marin UI.

## Domains

- **[`product-design/`](product-design/)** — product design principles, service design, interaction design, forms, error recovery, navigation, responsive design, and runtime dependency rules for application assets.
- **[`content-design/`](content-design/)** — plain language, voice and tone, terminology, interface writing, inclusive language.
- **[`accessibility/`](accessibility/)** — Marin's accessibility requirements and its interpretation of WCAG 2.2, including testing expectations.
- **[`brand/`](brand/)** — Marin brand identity, color, typography, logo, and imagery rules, including Open Sans as the MarinOS body/UI font.

## MarinOS typography and asset rule

MarinOS applications use Open Sans as the body and user-interface font. The font must be self-hosted as a first-party WOFF2 asset supplied through `marin-ui`/`marin-app-template`; applications must not load fonts or static UI assets from Google Fonts, Adobe Fonts, jsDelivr, unpkg, cdnjs, or similar runtime CDN services. See `brand/typography.md` and `product-design/runtime-dependencies.md`.

## Ownership rule

For any piece of guidance, ask: **who owns the truth?**

- A *standard* ("keyboard focus must always be visible") lives here.
- Its *implementation* (the actual `:focus-visible` CSS and component behavior) lives in `marin-ui`.
- A *workflow that applies it* (an accessibility review Skill) lives in `marin-skills`.

## Relationship to external standards

This repo does not fork or copy external authoritative standards (WCAG, plainlanguage.gov, etc.). It documents Marin's own requirements and interpretation, and references the external standard directly — see `accessibility/wcag-2.2-mapping.md` for the pattern.

## Status

This repo is newly created and being populated incrementally from existing guidance previously embedded in `marinappsbrand` and `marinskills`. See the migration plan for the current phase.
