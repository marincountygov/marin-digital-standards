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

## Planned files

- `standard.md`
- `wcag-2.2-mapping.md`
- `keyboard.md`
- `focus.md`
- `forms.md`
- `color-and-contrast.md`
- `documents.md`
- `testing.md`

Not yet populated — content is being migrated incrementally from `marinskills/accessibility` and the accessibility sections of `marinappsbrand/SPEC.md`. Implementation of these requirements (the actual CSS/JS) lives in `marin-ui`; auditing work against them is a `marin-skills/accessibility-review` workflow.
