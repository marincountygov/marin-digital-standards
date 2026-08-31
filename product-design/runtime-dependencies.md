# Runtime dependencies

Marin digital products should not depend on third-party CDNs or external presentation services to render their own interface.

This standard covers static presentation/runtime assets such as fonts, CSS frameworks, JavaScript libraries, icon sets, images, and component assets. It does not prohibit intentional data/API integrations when the external dependency is part of the service design and has an accessible loading, error, and recovery path.

## Default rule

Core interface assets must be first-party and local to the application or supplied by `marin-ui`.

Do not load production application fonts, CSS, JavaScript libraries, icon libraries, or framework assets at runtime from public CDNs or font services.

## MarinOS font asset rule

MarinOS applications must use Open Sans as the body/UI font and must serve it from a local WOFF2 asset.

Expected local paths:

```text
vendor/fonts/open-sans/OpenSans-VariableFont_wdth,wght.woff2
vendor/fonts/open-sans/OFL.txt
```

The license file must stay with the bundled font asset.

The controlling implementation belongs in `marin-ui`. App templates and generated apps should consume the `marin-ui` implementation rather than creating their own font-loading pattern.

## Prohibited runtime patterns

Production MarinOS applications must not load fonts or static UI assets from hosts such as:

```text
fonts.googleapis.com
fonts.gstatic.com
use.typekit.net
p.typekit.net
cdn.jsdelivr.net
unpkg.com
cdnjs.cloudflare.com
```

This includes `<link>`, `@import`, `@font-face src`, `<script>`, and copy-pasted sample code that causes a runtime request to those services.

## Allowed patterns

- Local, vendored first-party assets shipped with the application.
- Assets supplied through `marin-ui` and copied into the consuming application.
- Links that take a user to an external website, when the link is content/navigation rather than an asset required to render the app.
- Documented data or API integrations that are part of the service, provided the app has clear loading, unavailable, and recovery states.

## Review expectations

Before publication, reviewers should verify that:

- the app renders its core interface without font/CSS/JS requests to external CDNs;
- Open Sans is loaded from the local `vendor/fonts/open-sans/` path;
- the Open Sans license file is present;
- browser DevTools Network does not show prohibited font/CDN calls during normal initial page load;
- any remaining external network request is intentional, documented, and has a user-visible failure state.

## Related standards

- `marin-digital-standards/brand/typography.md` — approved typefaces and the MarinOS Open Sans body/UI font standard.
- `responsive-design.md` — apps must remain usable on narrow viewports and at zoom; local assets must not introduce layout breakage.
- `errors-and-recovery.md` — external data/API dependencies require clear failure states.
- `marin-ui` — implementation source for the local `@font-face` declaration, body font token, and component CSS.
