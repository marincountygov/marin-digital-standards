# Principles

The product-design foundation for any resident-facing service, form, or workflow — not the visual layer (`marin-ui`) and not the writing itself (`content-design`).

## The five questions a service must answer

Design and review every resident-facing service against these, in order:

1. Is this the right service for my situation?
2. Am I eligible, and what do I need before I start?
3. What will happen during the task?
4. What happens after I submit or contact the County?
5. What can I do if I can't complete the task or something goes wrong?

A service that can't be evaluated against all five isn't finished, regardless of how polished the parts that exist are.

## Operating principles

- Start with the resident's task, not the department's internal process.
- Name the service using the resident's verb and object — "Apply for a building permit," "Report illegal dumping" — not the program's internal name.
- State eligibility, requirements, cost, deadlines, and processing time *before* asking the resident to start, not partway through.
- Separate required steps from optional or situational ones.
- One primary action per page, screen, or section, wherever possible.
- Preserve continuity across web pages, forms, PDFs, emails, receipts, notices, and staff handoffs — a resident's context shouldn't reset every time the channel changes.
- Design for interruption, uncertainty, missing documents, payment failure, ineligibility, rejection, and appeal paths as a normal part of the design, not an edge case bolted on later.
- Confirm completion in plain terms, with next steps, expected timing, and contact options.
- Never expose internal jargon, org charts, system names, or administrative sequence unless the resident actually needs them to complete the task.

## Default service page structure

Unless a different template is specified, a resident-facing service page follows this order:

1. Page title using a resident action verb.
2. One-sentence summary of who the service is for and what it does.
3. Before you start: eligibility, requirements, documents, fees, deadlines, estimated time.
4. Start action or contact path.
5. What happens next.
6. How to check status or get help.
7. Related services or alternatives.

## Quality checklist

A resident-facing service is ready when: the title matches the resident's task · the page explains who should and shouldn't use it · the resident can tell what they need before starting · the primary action is visible and unambiguous · steps are ordered the way the resident experiences them, not the way the department processes them · fees, deadlines, processing times, and consequences are stated clearly · confirmation and next steps are specific · help and recovery paths are available · unnecessary internal terminology is absent · each page or message has one clear purpose.

## Related standards

- `service-design.md` — the resident's end-to-end journey, and eligibility/requirements.
- `interaction-design.md` — task flows and branching.
- `forms.md` — transactions, payments, uploads.
- `errors-and-recovery.md` — confirmations, status, and failure states.
- `navigation.md` — findability, labels, placement.
- `responsive-design.md` — mobile and narrow-viewport design.

Applying these principles to a specific service — mapping its journey, reviewing its forms, writing its failure states — is a `marin-skills/digital-service-design` workflow, not something this document does.
