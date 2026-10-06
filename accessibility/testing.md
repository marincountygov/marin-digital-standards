# Testing

What must be verified before publication. This is the policy — the step-by-step testing workflow and checklists live in the `marin-skills/accessibility-review` Skill, not here.

## Requirements

- Automated scanning and manual review are both required before publishing anything higher-risk than a minor content edit — automated tools alone catch roughly a third of real issues and cannot evaluate keyboard behavior, reading order, or screen reader announcement quality.
- Every interactive page/component gets a keyboard-only pass: reach and operate everything using only Tab, Shift+Tab, Enter, Space, Escape, and arrow keys where applicable.
- Contrast is verified numerically wherever exact color values are available, not eyeballed.
- Zoom to 200% and narrow-viewport reflow are checked for any new page or significant layout change.
- Higher-risk workflows (see `standard.md`'s "public-service workflows" section) get a screen reader spot check, not just an automated scan.
- WAVE is Marin's standard automated-scan tool for web pages. Test against a locally served HTTP URL, not a raw `file://` path — the extension frequently can't evaluate local files without explicit permission, and a gray/unscored result usually means that, not that the page is clean.
- Lighthouse accessibility testing through the PageSpeed Insights API runs weekly for every MarinOS app (`marin-os`'s `data/lighthouse.json`, shown on each app's Accessibility section) and can be re-run on demand. It supplements WAVE and manual review; it doesn't replace them. It tests the live production site in light mode only, so dark mode, keyboard behavior, and anything behind interaction still need manual checks.
- Fix automated findings by cause, not by silencing the rule: a control that needs a label gets a label, not an `aria-hidden`.
- A result from any single tool is never reported as a conformance claim on its own — see `standard.md`'s conformance language policy.
- External font/CSS/JavaScript dependencies are checked as part of prepublication review for MarinOS apps; core interface assets should not depend on third-party CDNs to render. See `marin-digital-standards/product-design/runtime-dependencies.md`.

## WCAG mapping

Testing verifies conformance with the criteria listed throughout `wcag-2.2-mapping.md`; it isn't itself a distinct success criterion.
