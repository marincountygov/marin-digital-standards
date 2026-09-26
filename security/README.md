# Security

Marin's security requirements for MarinOS applications — the policy layer, not the implementation.

This domain does not duplicate GitHub's own security features (secret scanning, Dependabot, push protection) or fork external standards. It documents what each MarinOS application is expected to do, and — honestly, given every current deployment target is GitHub Pages — what's actually achievable versus what needs a documented exception.

## Scope

- Marin's security standard for deployed MarinOS applications
- Security profile definitions (`public-web`, `public-api`, `authenticated`, `internal`, `custom`)
- What GitHub Pages hosting can and can't enforce
- Content Security Policy, secrets, dependencies, and data-declaration requirements
- Conformance language policy

## Files

- [`standard.md`](standard.md) — default standard, core principles, hosting constraints, CSP, secrets/dependencies, high-risk applications, conformance language policy.
- [`profiles.md`](profiles.md) — what each security profile requires, and which of those requirements are currently achievable on GitHub Pages.

## Scope note

This domain applies to **deployed applications only**. `marin-ui`, `marin-skills`, and `marin-digital-standards` itself aren't deployed applications and are out of scope for `security.json` — see `marin-os/security/README.md` for the full deployed-app list and how that scope was determined.

Implementation of these requirements (starter `security.json`, the CSP/meta-tag setup, the shared `#security` UI) lives in `marin-ui`/`marin-app-template`. The machine-readable schema lives in `marin-os/schemas/security.schema.json`. Applying and reviewing these requirements is a `marin-skills/security-review` workflow (plus the relevant steps of `marin-app-builder`/`app-maintainer`), not something this domain does directly.
