# Forms

Forms are the highest-risk surface in most Marin products — this is where someone applies for a service, pays a fee, or requests an accommodation. Treat form accessibility as a default requirement, not something to check at the end.

## Requirements

- Every field has a visible, programmatically associated label (`<label for>`). A placeholder is never a substitute for a label — it disappears the moment someone starts typing and isn't reliably exposed to assistive technology.
- A file input hidden behind a styled button (`visually-hidden`) still gets an accessible name (`aria-label`, or a `<label for>`) and `tabindex="-1"`, so keyboard users get one stop on the visible button instead of a second, invisible one.
- `aria-label` and `aria-labelledby` are only valid on elements whose role allows a name. A plain `<div>` or `<span>` can't carry one — give it a role that does (for example `role="list"` with `role="listitem"` rows, or `role="group"`), or use a native element.
- Required fields are identified in text ("Fields marked with an asterisk are required"), never by color or symbol alone.
- Help text is associated with its field programmatically (`aria-describedby`), not just placed visually nearby.
- Related controls (radio groups, checkbox groups) are grouped with `<fieldset>`/`<legend>` so the group's purpose is announced, not just each individual control.
- Errors are visible, specific, associated with the affected field, and written in plain language — "Enter an email address, such as name@example.com," not "Invalid input." Long forms get an error summary at the top, linking to each affected field.
- Entered data survives a validation error — never clear the form and make someone start over because one field was wrong.
- Use `autocomplete` attributes for common personal information (name, email, address) where applicable.
- When the same control repeats once per item in a list (a per-row checkbox, a per-card select), its accessible name identifies which item it belongs to. A generic label repeated identically across every instance ("Select item," "Choose option") gives assistive technology users no way to tell them apart without navigating elsewhere first to find out — this applies even when the visible label stays short by design; the fuller identifying text can go in `aria-label` without changing what's shown on screen.
- Avoid time limits on form completion unless truly necessary; where one exists, it's disclosed up front and extendable.
- For legal, financial, benefits, permit, or other critical/irreversible submissions, provide a review-and-confirm step before final submission.
- This applies the same way to a downloadable/fillable document form (PDF, Word) as it does to a web form — the medium doesn't change the requirement.

## WCAG mapping

3.3.1 Error Identification, 3.3.2 Labels or Instructions, 3.3.3 Error Suggestion, 3.3.4 Error Prevention (Legal, Financial, Data), 3.3.7 Redundant Entry. See `wcag-2.2-mapping.md` for the full table.
