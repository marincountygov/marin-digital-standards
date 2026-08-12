# Forms

Forms are the highest-risk surface in most Marin products — this is where someone applies for a service, pays a fee, or requests an accommodation. Treat form accessibility as a default requirement, not something to check at the end.

## Requirements

- Every field has a visible, programmatically associated label (`<label for>`). A placeholder is never a substitute for a label — it disappears the moment someone starts typing and isn't reliably exposed to assistive technology.
- Required fields are identified in text ("Fields marked with an asterisk are required"), never by color or symbol alone.
- Help text is associated with its field programmatically (`aria-describedby`), not just placed visually nearby.
- Related controls (radio groups, checkbox groups) are grouped with `<fieldset>`/`<legend>` so the group's purpose is announced, not just each individual control.
- Errors are visible, specific, associated with the affected field, and written in plain language — "Enter an email address, such as name@example.com," not "Invalid input." Long forms get an error summary at the top, linking to each affected field.
- Entered data survives a validation error — never clear the form and make someone start over because one field was wrong.
- Use `autocomplete` attributes for common personal information (name, email, address) where applicable.
- Avoid time limits on form completion unless truly necessary; where one exists, it's disclosed up front and extendable.
- For legal, financial, benefits, permit, or other critical/irreversible submissions, provide a review-and-confirm step before final submission.
- This applies the same way to a downloadable/fillable document form (PDF, Word) as it does to a web form — the medium doesn't change the requirement.

## WCAG mapping

3.3.1 Error Identification, 3.3.2 Labels or Instructions, 3.3.3 Error Suggestion, 3.3.4 Error Prevention (Legal, Financial, Data), 3.3.7 Redundant Entry. See `wcag-2.2-mapping.md` for the full table.
