# Accessibility

Marin's accessibility requirements and its interpretation of WCAG 2.2 — the policy layer, not the implementation.

WCAG itself stays authoritative and external; this domain does not fork or copy it. Each Marin requirement maps to the specific WCAG success criteria it satisfies, so the requirement is actionable without duplicating the standard.

## Scope

- Marin's accessibility standard
- WCAG 2.2 mapping (Marin requirement → WCAG success criteria)
- Keyboard behavior requirements
- Focus requirements
- Form accessibility requirements
- Color and contrast requirements
- Document accessibility requirements
- Testing expectations (including WAVE usage)

## Files

- [`standard.md`](standard.md) — default standard, core principles, build order, structure/semantics, conformance language policy.
- [`wcag-2.2-mapping.md`](wcag-2.2-mapping.md) — Marin requirement → WCAG 2.2 success criteria.
- [`keyboard.md`](keyboard.md)
- [`focus.md`](focus.md)
- [`forms.md`](forms.md)
- [`color-and-contrast.md`](color-and-contrast.md)
- [`documents.md`](documents.md) — PDF, Word, PowerPoint, and email.
- [`testing.md`](testing.md) — what must be verified before publication (policy only; the testing workflow itself is a `marin-skills/accessibility-review` concern).

Distilled from `marinskills/accessibility` (core + web + document-format skills) and the accessibility sections of `marinappsbrand/SPEC.md`. The source skills still contain the full review workflow, severity model, and finding format — that's Skill material, migrating to `marin-skills/accessibility-review` in a later phase — this domain keeps only the underlying requirements. Implementation of these requirements (the actual CSS/JS) lives in `marin-ui`.
