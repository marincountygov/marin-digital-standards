# Accessibility standard

## Default standard

Marin digital products target **WCAG 2.2 Level AA** by default. Where a stricter or more specific requirement applies — Section 508, ADA Title II rules, or another governing policy — apply that requirement instead. When the governing standard is unclear, state the assumption explicitly rather than silently picking one.

## Core principles

Use WCAG's POUR model as the foundation. Content and interfaces must be:

- **Perceivable** — text alternatives for non-text content, sufficient contrast, information never conveyed by color alone, adaptable and readable structure.
- **Operable** — full keyboard access, visible focus, no keyboard traps, adequate target size, no seizure-inducing motion, clear and predictable navigation.
- **Understandable** — plain language, clear headings and labels, predictable interaction, understandable errors, consistent terminology.
- **Robust** — valid semantic structure with correct programmatic names, roles, states, and values, so content works with current and future assistive technology.

WCAG is the baseline, not the full definition of accessibility. Cognitive load, mobile usability, low-bandwidth conditions, and multilingual content all affect whether something is genuinely accessible, even when it passes a technical check.

## Build order

Build accessible interfaces from the foundation up, in this order:

1. Correct native HTML.
2. Clear content and labels.
3. CSS that doesn't destroy semantics or operability.
4. JavaScript used progressively, not as a requirement for basic access.
5. ARIA only when native semantics are insufficient — never to compensate for an avoidable HTML problem.

If a native element already provides the required semantics and behavior (`<button>`, `<a href>`, `<label>`, `<fieldset>`/`<legend>`, `<details>`/`<summary>`), use it instead of a custom element with ARIA bolted on. A custom control built anyway must independently provide semantic role, accessible name, full keyboard operation, visible focus, correct state, and expected keyboard interaction — all four, not some.

## Structure and semantics

- Each page or route has a unique, meaningful `<title>`, updated on route change in single-page applications.
- Page language is set (`<html lang="en">`), with in-content language changes marked where feasible.
- One clear `<h1>` per page; headings represent document structure, never visual size, and never skip levels for visual reasons.
- Landmarks (`<header>`, `<nav>`, `<main>`, `<aside>`, `<footer>`) are used intentionally; when more than one of the same landmark type exists, each gets an accessible name (`aria-label`).
- A skip link to main content is provided whenever repeated navigation precedes it, and it's visible when focused.
- Lists use list markup; tables are used for data, never for visual layout, and data tables have a caption and header cells with `scope`.
- Accessibility affordances are never removed without an accessible replacement — a focus outline can be restyled, never deleted outright.

## Components and interaction patterns

Common components (accordions, modal dialogs, tabs, menus, alerts, toasts) each carry their own baseline requirements — see `keyboard.md` and `focus.md` for the cross-cutting operability rules that apply to all of them. In general:

- Don't reach for an ARIA widget pattern (tabs, menu) when the content doesn't need that interaction model — headings, links, or a simple accordion are often the more accessible and more honest choice.
- A modal dialog must trap focus while open, return focus to its trigger on close, have an accessible name, and make background content inert to assistive technology.
- A toast or transient status message is never the only place critical information appears — persistent alternatives exist for anything the user must not miss.

## Public-service workflows are high-risk

For government, benefits, housing, permits, tax, legal, or emergency content, an accessibility barrier can block someone from participating in civic life or accessing a service they're entitled to — not just a bad experience. Treat applying for services, submitting forms, paying fees, scheduling appointments, filing complaints, requesting accommodations, and accessing emergency or public-meeting information as high-risk by default, warranting extra scrutiny before publication.

## Conformance language policy

Marin does not overclaim accessibility status. Don't say "this is WCAG compliant," "this is fully accessible," or "no accessibility issues exist" — these are absolute claims a partial review can't support and create real legal and reputational risk if wrong.

Prefer calibrated language: "this appears aligned with WCAG 2.2 AA based on the reviewed material," "this is a potential WCAG issue," "this requires validation with assistive technology." Any review that didn't include full manual testing says so. Any newly generated content carries the expectation that it's validated before publication, especially for reading order, assistive technology behavior, contrast, and structure.

## Related standards

- `wcag-2.2-mapping.md` — Marin requirements mapped to specific WCAG 2.2 success criteria.
- `keyboard.md`, `focus.md`, `forms.md`, `color-and-contrast.md` — requirement detail for each area.
- `documents.md` — requirements for downloadable/exported files (PDF, Word, PowerPoint, email).
- `testing.md` — what must be verified before publication.

Implementation of these requirements (the actual CSS/JS) lives in `marin-ui`. Auditing existing work against them is a `marin-skills/accessibility-review` workflow, not something this document does.
