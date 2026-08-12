# Errors and recovery

Confirmations, status updates, and failure states — the "resolve" and "recover" stages of `service-design.md`'s journey model.

## Confirmation and status messages

State, in this order: the result ("We received your application") · proof (a confirmation/case/receipt number, when available) · what the County will do next, with realistic timing · what the resident must do next, if anything · how to check status · contact or help options · any deadline, consequence, or no-response-period warning that applies.

Common status types, each with a distinct message pattern:

- **Received** — the County has it, but hasn't started or completed review.
- **In review** — staff or a system is evaluating the request, documents, payment, eligibility, or availability.
- **More information needed** — the resident must provide missing or corrected information.
- **Approved or accepted** — the service can proceed, or the resident has qualified.
- **Denied or not eligible** — the service can't proceed; the resident needs reasons, alternatives, and appeal rights, not just "no."
- **Completed or closed** — the County has fulfilled, closed, or resolved the request.

A confirmation or status message is ready when the resident knows what happened, has proof they can save, knows what happens next and whether they must act, and knows how to get help.

## Failure states

Name the problem plainly. Explain whether the resident can fix it. Tell them exactly what to do next. Preserve submitted information whenever possible. Avoid blame and avoid error codes without explanation. Provide a contact path when self-service recovery isn't possible. Include deadlines or consequences when relevant. Provide alternatives when the resident is ineligible or the service is unavailable.

Common failure states, each with what the message needs to include:

- **Ineligible** — the reason in plain language, an alternative service or contact path, whether they can appeal/reapply/update information.
- **Missing information** — what's missing, how to provide it, the deadline if any, what happens if they don't.
- **Invalid information** — which field/item, the accepted format or an example, whether saved information remains available.
- **Payment failure** — whether the request was actually submitted, whether to retry, how to avoid a duplicate charge, who to contact about charges.
- **Upload failure** — accepted file types/size limits, how to rename or resubmit, an alternative submission method.
- **Deadline missed** — what deadline, whether late submission is accepted, whether an appeal/extension/waiver/contact path exists.
- **Service unavailable** — what's unavailable, when it may return if known, an alternative channel, and what to do for urgent needs.

A failure state is ready when residents know what went wrong, whether they can fix it, what to do next, and how to get help without restarting unnecessarily.

## Related standards

- `service-design.md` — where these states sit in the overall resident journey.
- `marin-digital-standards/content-design/forms-and-errors.md` — the specific wording conventions for an error message.
- `marin-digital-standards/accessibility/forms.md` — the requirement that errors be programmatically associated with their field and announced to assistive technology.
