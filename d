warning: in the working copy of 'README.md', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'accessibility/testing.md', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'brand/README.md', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'brand/typography.md', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'product-design/README.md', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/README.md b/README.md[m
[1mindex e9dc26a..71b9805 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -11,10 +11,14 @@[m [mIt does not contain implementation. CSS, JavaScript, components, app templates,[m
 [m
 ## Domains[m
 [m
[31m-- **[`product-design/`](product-design/)** — product design principles, service design, interaction design, forms, error recovery, navigation, responsive design.[m
[32m+[m[32m- **[`product-design/`](product-design/)** — product design principles, service design, interaction design, forms, error recovery, navigation, responsive design, and runtime dependency rules for application assets.[m
 - **[`content-design/`](content-design/)** — plain language, voice and tone, terminology, interface writing, inclusive language.[m
 - **[`accessibility/`](accessibility/)** — Marin's accessibility requirements and its interpretation of WCAG 2.2, including testing expectations.[m
[31m-- **[`brand/`](brand/)** — Marin brand identity, color, typography, logo, and imagery rules.[m
[32m+[m[32m- **[`brand/`](brand/)** — Marin brand identity, color, typography, logo, and imagery rules, including Open Sans as the MarinOS body/UI font.[m
[32m+[m
[32m+[m[32m## MarinOS typography and asset rule[m
[32m+[m
[32m+[m[32mMarinOS applications use Open Sans as the body and user-interface font. The font must be self-hosted as a first-party WOFF2 asset supplied through `marin-ui`/`marin-app-template`; applications must not load fonts or static UI assets from Google Fonts, Adobe Fonts, jsDelivr, unpkg, cdnjs, or similar runtime CDN services. See `brand/typography.md` and `product-design/runtime-dependencies.md`.[m
 [m
 ## Ownership rule[m
 [m
[1mdiff --git a/accessibility/testing.md b/accessibility/testing.md[m
[1mindex 664f7ce..c991f15 100644[m
[1m--- a/accessibility/testing.md[m
[1m+++ b/accessibility/testing.md[m
[36m@@ -11,6 +11,7 @@[m [mWhat must be verified before publication. This is the policy — the step-by-ste[m
 - Higher-risk workflows (see `standard.md`'s "public-service workflows" section) get a screen reader spot check, not just an automated scan.[m
 - WAVE is Marin's standard automated-scan tool for web pages. Test against a locally served HTTP URL, not a raw `file://` path — the extension frequently can't evaluate local files without explicit permission, and a gray/unscored result usually means that, not that the page is clean.[m
 - A result from any single tool is never reported as a conformance claim on its own — see `standard.md`'s conformance language policy.[m
[32m+[m[32m- External font/CSS/JavaScript dependencies are checked as part of prepublication review for MarinOS apps; core interface assets should not depend on third-party CDNs to render. See `marin-digital-standards/product-design/runtime-dependencies.md`.[m
 [m
 ## WCAG mapping[m
 [m
[1mdiff --git a/brand/README.md b/brand/README.md[m
[1mindex c611fcf..d9f148f 100644[m
[1m--- a/brand/README.md[m
[1m+++ b/brand/README.md[m
[36m@@ -7,6 +7,7 @@[m [mMarin's visual identity rules — the source of truth for what the County brand[m
 - Identity principles[m
 - Official County colors[m
 - Approved typefaces[m
[32m+[m[32m- MarinOS body/UI typography standard[m
 - Logo usage[m
 - Imagery rules[m
 [m
[36m@@ -15,7 +16,7 @@[m [mMarin's visual identity rules — the source of truth for what the County brand[m
 - [`identity.md`](identity.md) — source and core principles, plus the MarinOS product-family identity notes.[m
 - [`logo.md`](logo.md) — hierarchy, non-negotiable rules, minimum size, placement.[m
 - [`color.md`](color.md) — County palette and permitted foreground/background pairings.[m
[31m-- [`typography.md`](typography.md) — approved typefaces and hierarchy.[m
[32m+[m[32m- [`typography.md`](typography.md) — approved typefaces and hierarchy, including Open Sans as the MarinOS body/UI font.[m
 - [`imagery.md`](imagery.md) — photography and iconography (intentionally thin — the source guide doesn't cover this in depth).[m
 - [`mediums.md`](mediums.md) — how identity applies to email, presentations, reports, social, video, and forms. Not in the originally planned file set, added because this content didn't fit cleanly into the other five.[m
 [m
[36m@@ -23,4 +24,3 @@[m [mDistilled from `marinskills/brand-standards` (in full) and the MarinOS-specific[m
 [m
 Note the distinction from `marin-ui/tokens`: this domain defines the official colors (e.g. Marin blue is `#0777cf`); `marin-ui` defines what that becomes as a semantic interface token (e.g. `--app-accent`) and how components consume it.[m
 [m
[31m-Note the distinction from `marin-ui/tokens`: this domain defines the official colors (e.g. Marin blue is `#0777cf`); `marin-ui` defines what that becomes as a semantic interface token (e.g. `--app-accent`) and how components consume it.[m
[1mdiff --git a/brand/typography.md b/brand/typography.md[m
[1mindex 0c99fb8..6f75b82 100644[m
[1m--- a/brand/typography.md[m
[1m+++ b/brand/typography.md[m
[36m@@ -2,16 +2,40 @@[m
 [m
 ## Approved typefaces[m
 [m
[31m-- **Futura** — appears in official logo/logotype artwork. Don't substitute or alter the typography inside official logo artwork.[m
[32m+[m[32m- **Futura** — appears in official logo/logotype artwork. Do not substitute or alter the typography inside official logo artwork.[m
[32m+[m[32m- **Open Sans** — required body and user-interface typeface for MarinOS applications and app templates. MarinOS apps must load Open Sans from local first-party assets, not from Google Fonts or another runtime font service.[m
[32m+[m[32m- **Jost** — approved MarinOS heading/display typeface when supplied by `marin-ui`. Do not use Jost for ordinary body copy.[m
 - **Arial Regular** — preferred for general print body copy; default for routine documents and print collateral unless a template specifies otherwise.[m
 - **Georgia** — may be used sparingly when a formal serif treatment is needed.[m
[31m-- **Verdana** — identified in the guide as the website typeface. On modern digital systems where Verdana isn't the platform default, preserve County hierarchy through scale, weight, line-height, and spacing rather than forcing the exact font.[m
[32m+[m[32m- **Verdana** — identified in the published guide as the website typeface. For MarinOS applications, Open Sans supersedes Verdana as the body/UI font while Verdana remains an acceptable fallback.[m
[32m+[m
[32m+[m[32m## MarinOS application typography[m
[32m+[m
[32m+[m[32mMarinOS applications use a two-role typography model:[m
[32m+[m
[32m+[m[32m1. **Body and interface text:** Open Sans.[m
[32m+[m[32m2. **Headings and product display text:** Jost, as implemented by `marin-ui`.[m
[32m+[m
[32m+[m[32mOpen Sans is the standard for paragraphs, form controls, buttons, labels, tables, helper text, alerts, navigation text, and other routine interface copy. Components should inherit the body/UI font rather than declaring unrelated font stacks.[m
[32m+[m
[32m+[m[32mMarinOS implementations must self-host Open Sans as a local application asset. The expected path in `marin-ui`, `marin-app-template`, and generated apps is:[m
[32m+[m
[32m+[m[32m```text[m
[32m+[m[32mvendor/fonts/open-sans/OpenSans-VariableFont_wdth,wght.woff2[m
[32m+[m[32mvendor/fonts/open-sans/OFL.txt[m
[32m+[m[32m```[m
[32m+[m
[32m+[m[32mThe font must not be loaded from `fonts.googleapis.com`, `fonts.gstatic.com`, Adobe Fonts, jsDelivr, unpkg, cdnjs, or another runtime CDN/font service.[m
 [m
 ## Hierarchy[m
 [m
 For most County materials: one clear primary title, short section headings, body text visually subordinate to headings, and consistent treatment of labels/captions/dates/source notes. Avoid excessive bold, all-caps, underlining, drop shadows, outlines, and other decorative effects — restraint is the standard, not an afterthought.[m
 [m
[32m+[m[32mFor MarinOS applications, preserve hierarchy primarily through semantic heading levels, scale, weight, line-height, spacing, and the standard `marin-ui` tokens. Do not create a custom font hierarchy inside a single app unless the design has been approved as a specific exception.[m
[32m+[m
 ## Related standards[m
 [m
[32m+[m[32m- `marin-digital-standards/product-design/runtime-dependencies.md` — runtime dependency rules, including the no-external-font/CDN rule for application assets.[m
 - `marin-digital-standards/content-design/interface-writing.md` — heading *case* (AP-style sentence case) is a content-design rule, not a typography one; this document covers typeface and visual hierarchy only.[m
 - `color.md` — how palette colors interact with text.[m
[32m+[m[32m- `marin-ui` — implementation source of truth for design tokens, `@font-face` declarations, and component CSS.[m
[1mdiff --git a/product-design/README.md b/product-design/README.md[m
[1mindex adaecb4..a331b0d 100644[m
[1m--- a/product-design/README.md[m
[1m+++ b/product-design/README.md[m
[36m@@ -11,6 +11,7 @@[m [mStandards for how Marin digital products are designed and structured — not the[m
 - Errors and recovery[m
 - Navigation[m
 - Responsive design[m
[32m+[m[32m- Runtime dependency rules for application assets[m
 [m
 ## Files[m
 [m
[36m@@ -21,5 +22,6 @@[m [mStandards for how Marin digital products are designed and structured — not the[m
 - [`errors-and-recovery.md`](errors-and-recovery.md) — confirmation/status messages and failure states.[m
 - [`navigation.md`](navigation.md) — findability, labels, placement, cross-linking, duplication/canonical pages.[m
 - [`responsive-design.md`](responsive-design.md) — intentionally thin; the mechanics are accessibility requirements, not a separate standard yet.[m
[32m+[m[32m- [`runtime-dependencies.md`](runtime-dependencies.md) — local-first rules for fonts, CSS, JavaScript libraries, and other static application assets.[m
 [m
 Distilled from `marinskills/digital-service-design` (in full) and the core principles/decision-rules of `marinskills/information-architecture-skill` (its subskill-level workflow detail hasn't had its own migration pass yet — flagged for later, similar to how `content-strategy` was handled).[m
