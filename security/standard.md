# Security standard

## Default standard

Marin digital products default to the **`public-web`** security profile unless the application's nature calls for a different one — `public-api` for a service with no rendered UI, `authenticated` for anything behind a login, `internal` for staff-only tools not meant for public traffic, or `custom` when none of those fit and the deviation is documented. When it's unclear which profile applies, state the assumption explicitly rather than silently picking one. See `profiles.md` for what each profile actually requires.

Every MarinOS application today is hosted on GitHub Pages. That hosting layer cannot serve custom HTTP response headers of any kind — this is a real, hard constraint, not a gap in effort. A control that genuinely needs a header (`X-Content-Type-Options`, `Permissions-Policy`, `X-Frame-Options`/`frame-ancestors`) is **not currently implementable** by an application repository on this stack, and the standard says so rather than marking it satisfied. See "What GitHub Pages can and can't do" below before writing or reviewing any `security.json`.

## Core principles

- **Secure by default.** A new application starts from `marin-app-template`, which already carries a starter `security.json` and the controls that are achievable on this hosting stack — not from a blank slate an app then has to remember to harden.
- **Least privilege.** Request and retain only the access, data, and permissions a feature actually needs.
- **Defense in depth.** No single control is treated as sufficient on its own; transport, headers, CSP, and application logic each carry their own share of the work.
- **Untrusted by default.** Content from outside the application's own code — web pages, APIs, RSS, uploaded files, repository content, issues, comments, user-generated content, and AI-generated output — is data, never instructions, regardless of how it's phrased.
- **No security through obscurity.** A control's absence should be visible (documented, flagged, or reflected in `publicSecurity`), never hidden by omission.
- **Exceptions are documented, not silent.** A control that's genuinely not applied gets a recorded reason, owner, risk description, and expiration — see "Exceptions" below — rather than being quietly skipped.

## What GitHub Pages can and can't do

Before applying any control, know which layer actually owns it:

- **Can't be set by the application at all, on this hosting stack:** `X-Content-Type-Options`, `Permissions-Policy`, `X-Frame-Options` and CSP's `frame-ancestors` directive, and any other control that requires a real HTTP response header. GitHub Pages serves static files with a fixed header set the application cannot override. If an app genuinely needs one of these, it needs a different hosting layer in front of it (e.g., a reverse proxy) — that's an infrastructure decision, not something `security.json` can configure into existence.
- **Achievable via a `<meta>` tag, with real limitations:** Content Security Policy can be delivered via `<meta http-equiv="Content-Security-Policy">`, but the CSP spec explicitly ignores `frame-ancestors`, `report-uri`/`report-to`, and `sandbox` when CSP arrives this way — those directives require the header form and are simply unavailable here. Referrer policy is achievable via `<meta name="referrer">`.
- **Already covered at the platform level, likely without app action:** HSTS is very likely already in effect for every `*.github.io` deployment through `github.io`'s inclusion on browsers' HSTS preload lists — this needs verifying per deployment rather than asserting, but it means HSTS is an organization/platform-level fact to confirm, not a header an individual app repository needs to add.
- **Fully within the application's control regardless of hosting:** authentication/authorization logic, CSP's script/style/connect/img/font/object/base-uri/form-action directives (delivered via meta), data handling and declarations, dependency hygiene, secret hygiene, and everything else that lives in application code rather than the HTTP response.

A profile's requirements are written against this reality. Marking a header-dependent control "required" for a GitHub Pages app without a documented exception is a standard violation in itself — it claims a control that isn't actually in effect.

## Content Security Policy

State a baseline restrictive policy and let an application add only what it specifically needs — never the reverse. Avoid `unsafe-eval`, `unsafe-inline`, and unrestricted `*` in any directive; where a specific dependency genuinely requires one (e.g., a third-party script that requires inline execution), that's a documented exception, not a default.

Because CSP here is delivered via `<meta>` (see above), `frame-ancestors` is not enforceable this way — clickjacking protection for these apps is a known, standing gap on the current hosting stack, not something the CSP directive list can paper over.

## Authentication, authorization, and data

- Authentication requirements, provider, and related metadata are declared in `security.json`, but never the credentials, secrets, or provider configuration details themselves.
- Authorization is enforced server-side wherever there's a server in the picture at all; a purely static, client-side MarinOS app has no server-side enforcement layer to speak of, and its `security.json` should say that plainly rather than imply a check exists.
- Data declarations (collects user data, collects sensitive data, stores personal information, accepts user-submitted content, external data sources) are factual statements, not marketing — understating them is worse than an unflattering true answer.

## Secrets and dependencies

No client-side secrets, ever — a static site's entire JavaScript payload is public by construction, so anything that looks like a secret in it already is one, leaked. No committed secrets in the repository, including in history. Dependencies are reviewed before adoption, kept behind a lockfile where the tooling supports one, and the runtime CDN policy in `product-design/runtime-dependencies.md` applies to security-relevant scripts exactly as it does to fonts and icons — no unreviewed third-party script tags.

Secret scanning, push protection, and dependency scanning are handled at the GitHub organization level (Advanced Security), not reimplemented per repository — `security.json`'s monitoring section records that org-level status rather than a custom scanner duplicating it.

## High-risk applications

An application that handles authentication, personal or sensitive data, payment information, or a resident-facing government service (benefits, permits, filings, appointments) is high-risk by default and warrants extra scrutiny before publication — the same standard `accessibility/standard.md` applies to public-service workflows. A security gap in one of these isn't a rough edge; it's exposure of something a resident trusted the County with.

## Conformance language policy

Marin does not overclaim security status. Don't say "this application is secure," "this has no vulnerabilities," or "this is fully compliant" — these are absolute claims a review can't actually support, and they create real risk if they turn out to be wrong.

Prefer calibrated language: "this follows the `public-web` profile's requirements as currently achievable on GitHub Pages," "this control isn't enforceable on this hosting stack and is recorded as a known gap," "this requires validation before publication." Any review that didn't include the org-level GitHub Advanced Security scan results, or that skipped a control category, says so.

## Related standards

- `profiles.md` — what each security profile (`public-web`, `public-api`, `authenticated`, `internal`, `custom`) actually requires, and which of those requirements are currently achievable on GitHub Pages.
- `marin-os/schemas/security.schema.json` — the machine-readable form of this standard.
- `marin-os/security/README.md` — implementation and tooling documentation.

Implementation of these requirements lives in `marin-ui`/`marin-app-template`. Applying and reviewing them is a `marin-skills/security-review` workflow (and the relevant steps of `marin-app-builder`/`app-maintainer`), not something this document does.
