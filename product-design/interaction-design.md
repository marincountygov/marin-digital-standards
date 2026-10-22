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

- **Quiet by default.** A button that does something other than submit a form (Copy, Link, Download, Reset, Next) uses one shared quiet design: no fill, a border on hover. Only the button for the main result of a screen is solid blue or dark: the one that submits a form or finishes the task ("Anonymize and download," "Create encrypted ZIP"). A screen has at most one solid button. Choosing a file, clearing, resetting and the like are quiet. A call to action that opens a form is also solid.
- **Icon-only for repeated utility actions.** Copy, Link, Download, Reset, Undo and Redo, Add, Delete, Next and Previous, and Show password show an icon and no text. The name is set with `aria-label` and the same words appear as a hover tooltip (`title`).
- **Keep the words** on the one main action of a screen, on dialog buttons (Cancel, Close, Save, Discard changes), and on anything without a clear, familiar icon (Choose file, Generate password). A word button is still quiet unless it is the main action, and an icon may follow the word ("Learn more" with an arrow).
- **Danger is quiet until pointed at.** A button that deletes or discards turns red on hover and focus, and its name says what it removes. A confirmation dialog names the thing and uses words.
- **Cluster related buttons.** Buttons for related actions sit together in one labeled group, not scattered.
- **Space the buttons people press often.** A pair pressed often or on touch, such as Previous and Next, is two separate buttons with a gap and a 44 by 44 pixel target. Do not join them edge to edge: people with limited fine motor control, or wide fingers, press the wrong one.
- **Tabs, filter chips and sort headers are not action buttons.** Tabs switch the view and show the chosen tab with `aria-selected`. Filter chips are toggles with `aria-pressed`. A sortable column header is a button that reads as the header text, with `aria-sort` on the header cell.
- **A button that opens a menu** (Share, Download with more than one format) is an icon button with a caret, `aria-expanded` and `aria-controls`. A single action does not need a menu.
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
