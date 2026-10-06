# Security profiles

Plain-language explanation of each profile `security.json` can select. See `standard.md` first, especially "What GitHub Pages can and can't do" — several items below are marked accordingly rather than claimed as enforced.

## `public-web`

The default for a public-facing MarinOS application with a rendered UI — the shape of most MarinOS apps today (Marin Mentions, Marin Zipper, Marin Anonymizer, and similar).

Requires:
- HTTPS (already the case for every `github.io` deployment).
- HSTS — inherited from `github.io`'s platform-level HSTS preload status; confirm rather than assume, but this is not an app-level task.
- A Content Security Policy, delivered via `<meta>` (see `standard.md` for what that mechanism can't cover — `frame-ancestors` in particular).
- Referrer policy, via `<meta name="referrer">`.
- `security.txt` at `.well-known/security.txt`.
- Secret scanning and dependency scanning — handled at the GitHub organization level, not per-app.
- **Not currently achievable on GitHub Pages, recorded as a known gap rather than marked satisfied:** MIME-sniffing protection (`X-Content-Type-Options`), `Permissions-Policy`, and clickjacking protection (`X-Frame-Options`/`frame-ancestors`) — all three require a real HTTP response header this hosting stack can't serve.

## `public-api`

For a service with no rendered UI of its own — MarinOS doesn't currently have one of these, but the profile exists for when it does.

Same transport/CSP/monitoring baseline as `public-web`, minus anything that only makes sense for a rendered page (referrer policy, clickjacking protection). Adds stricter `default-src`/`connect-src` scoping, since an API has no legitimate reason to load a broad set of origins the way a UI sometimes does.

## `authenticated`

For an application with a login. Everything `public-web` requires, plus:
- Authentication provider and requirement declared in `security.json` (never credentials or provider secrets themselves).
- Authorization enforced server-side wherever a server actually exists in the request path; a purely static, client-side app has no such layer, and should say so rather than imply one.
- Session/token handling reviewed as part of any change that touches it — this is `security-review` skill territory, not a box `security.json` can check on its own.

MarinOS doesn't currently have an authenticated app in production; this profile is defined ahead of need, matching how `custom` exists for whatever doesn't fit the others.

## `internal`

For a staff-only tool not meant for public/resident traffic (most of the "internal utility" apps in the catalog — Marin Zipper, Marin Unzipper, Marin Anonymizer fall here in spirit even though they're technically reachable at a public URL).

Same baseline as `public-web`, but the "high-risk application" scrutiny in `standard.md` applies more narrowly — an internal tool that doesn't touch resident data or public-service workflows carries lower stakes than one that does, and review depth should reflect that rather than treating every app identically regardless of audience.

## `custom`

For anything that doesn't fit the above without distortion. A `custom` profile still needs every requirement it deviates from documented as an exception (control, reason, risk, owner, approval, expiration) per `standard.md` — `custom` is not a way to skip the exception process, it's an acknowledgment that the starting defaults weren't the right fit.

## Profiles and audience

An app's profile must fit its audience in `marin.yml`: `staff` apps use `internal`, `public` apps use `public-web` or `public-api`, and `developers` apps use `internal`, `public-web`, or `custom`. The public Security section does not hold its own label. It shows "Built for" followed by the audience, taken from `marin.yml`, so the two can never disagree.

## Choosing a profile

Ask, in order: does it have a UI (`public-web`/`internal`) or not (`public-api`)? Does it require login (`authenticated`)? Is it meant for the public or for staff only (`public-web` vs. `internal`)? If none of those describe it honestly, use `custom` and document why.
