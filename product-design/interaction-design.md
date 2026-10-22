# Interaction design

Turning a service into a concrete sequence of resident actions.

## Core rules

- Write steps in the order residents actually perform them, not the order the department processes them internally.
- Start each step with a verb.
- Keep each step to one action where possible.
- Separate required steps from optional, conditional, or follow-up ones.
- State what the resident needs *before* each step and what they receive *after* it.
- Never present a County back-office step as a resident step unless the resident must act on it.

## Buttons

- **One quiet look for secondary buttons.** A button that does something other than submit a form (Copy, Link, Download, Reset, Next) uses one shared design: no fill, a border on hover. Only a button that submits a form is solid blue or dark. A call to action that opens a form is the one other solid button on a page.
- **Icon-only where the icon is clear.** A secondary button shows an icon and no text. Its name is set with `aria-label` and the same words appear as a hover tooltip (`title`). A button that carries a word because the owner asked (for example "Learn more") keeps the word and adds an icon after it.
- **Cluster related buttons.** Buttons for related actions (Copy, Link, Download) sit together in one labeled group, not scattered.
- **Space the buttons people press often.** A pair pressed often or on touch, such as Previous and Next, is two separate buttons with a gap between them and a target of 44 by 44 pixels. Do not join them edge to edge: people with limited fine motor control, or wide fingers, press the wrong one.
- **A form does only form functions.** No decorative icons or other embellishments (see `forms.md`).

## Flow types

- **Linear flow** — every resident follows the same path. Example: check eligibility → gather documents → complete application → pay → submit → save confirmation → wait for review.
- **Branching flow** — the next step depends on eligibility, location, service type, fee status, prior approval, account status, or documentation. Write branches as explicit conditionals: "If [condition], [action]." Always include a "not sure" path to help.
- **Channel-choice flow** — the resident can complete the task online, by phone, by mail, by email, or in person. For each channel state who should use it, what they need, how long it takes, whether the result is the same, and what confirmation they receive.

## What makes a flow ready

A resident can complete it without needing to infer a missing prerequisite, internal process detail, timing, or recovery option. Concretely: can they tell what to do first · are steps ordered by resident action rather than department process · are hidden prerequisites surfaced · are required documents introduced before the form begins · is payment placed at the right point · does the flow explain what happens after submission · are exceptions and recovery paths visible · is every step actually necessary (no duplicate steps or repeated data entry).

## Related standards

- `service-design.md` — the journey a flow is drawn from.
- `forms.md` — the specific case of a transactional flow (form, payment, upload).
- `marin-digital-standards/accessibility/keyboard.md` and `focus.md` — the corresponding operability requirements once a flow becomes an actual interface.
