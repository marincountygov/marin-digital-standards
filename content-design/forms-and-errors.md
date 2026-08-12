# Forms and errors

The *wording* of forms and error messages. For the structural/technical requirements (labels programmatically associated, focus management, preserving entered data), see `marin-digital-standards/accessibility/forms.md` — this document is what the words should say, not how the markup should behave.

## Writing form questions

- Ask only for information that's actually necessary — every extra field is a small tax on every single person who fills out the form, whether or not they'd have answered "no."
- Use familiar words for field labels and questions, not internal system or database terminology.
- Explain briefly why sensitive information is being asked for, especially anything that isn't obviously relevant to the task.
- State eligibility and documentation requirements before the reader starts, not as a surprise partway through.
- Break a long form into logical sections with a clear sense of progress.
- Give an estimated completion time when it's genuinely useful (a 3-minute form and a 45-minute application set very different expectations).

## Writing error messages

An error message names the field, states the actual problem, and states how to fix it — in that order. *"Invalid input"* fails all three tests. *"Enter an email address, such as name@example.com"* passes.

For a form with multiple errors, provide a summary at the top that links to each affected field, in addition to the inline message at the field itself — a reader shouldn't have to hunt through the whole form to find what needs fixing.

## Writing confirmations and next steps

After a successful submission, state clearly what happened, what happens next, and where to go if something's needed from the reader (a reference number to save, a follow-up email to expect, a decision timeline). A bare "Success" leaves the reader unsure whether they're actually done.

## Related standards

- `marin-digital-standards/accessibility/forms.md` — structural and technical requirements.
- `plain-language.md` — word choice and sentence structure generally.
- `inclusive-language.md` — when a form touches income, housing status, disability, or another sensitive category, apply that standard to how the question and any related messaging is worded.
