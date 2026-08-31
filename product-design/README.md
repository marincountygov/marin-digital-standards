# Product design

Standards for how Marin digital products are designed and structured — not their visual implementation (that's `marin-ui`) and not content/writing rules (that's `content-design/`).

## Scope

- Product design principles
- Service design guidance
- Interaction design guidance
- Forms
- Errors and recovery
- Navigation
- Responsive design
- Runtime dependency rules for application assets

## Files

- [`principles.md`](principles.md) — the five-question service model, operating principles, default page structure.
- [`service-design.md`](service-design.md) — the ten-stage resident journey, eligibility vs. requirements.
- [`interaction-design.md`](interaction-design.md) — task-flow rules and flow types (linear/branching/channel-choice).
- [`forms.md`](forms.md) — the service-design layer of forms/payments/uploads (see `content-design/forms-and-errors.md` for wording, `accessibility/forms.md` for structure).
- [`errors-and-recovery.md`](errors-and-recovery.md) — confirmation/status messages and failure states.
- [`navigation.md`](navigation.md) — findability, labels, placement, cross-linking, duplication/canonical pages.
- [`responsive-design.md`](responsive-design.md) — intentionally thin; the mechanics are accessibility requirements, not a separate standard yet.
- [`runtime-dependencies.md`](runtime-dependencies.md) — local-first rules for fonts, CSS, JavaScript libraries, and other static application assets.

Distilled from `marinskills/digital-service-design` (in full) and the core principles/decision-rules of `marinskills/information-architecture-skill` (its subskill-level workflow detail hasn't had its own migration pass yet — flagged for later, similar to how `content-strategy` was handled).
