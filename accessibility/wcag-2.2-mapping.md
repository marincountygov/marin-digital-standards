# WCAG 2.2 mapping

Marin requirements mapped to the WCAG 2.2 success criteria they satisfy. WCAG itself stays authoritative and external — this table exists so a requirement is actionable without anyone having to cross-reference the spec themselves for common cases. Not exhaustive; add a row when a new requirement needs one.

| Marin requirement | WCAG 2.2 criteria |
| --- | --- |
| Visible focus indicator on every interactive element | 2.4.7 Focus Visible, 2.4.11 Focus Not Obscured (Minimum) |
| Full keyboard operability, no traps | 2.1.1 Keyboard, 2.1.2 No Keyboard Trap |
| Logical, predictable focus order | 2.4.3 Focus Order |
| One `<h1>`, headings represent structure without skipping levels | 1.3.1 Info and Relationships, 2.4.6 Headings and Labels |
| Named landmarks when more than one of the same type exists | 1.3.1 Info and Relationships, 2.4.1 Bypass Blocks |
| Skip link to main content | 2.4.1 Bypass Blocks |
| Unique, meaningful page title | 2.4.2 Page Titled |
| Page language set, in-content language changes marked | 3.1.1 Language of Page, 3.1.2 Language of Parts |
| Text/icon/focus-indicator contrast meets minimums | 1.4.3 Contrast (Minimum), 1.4.11 Non-text Contrast |
| Information never conveyed by color alone | 1.4.1 Use of Color |
| Content reflows without loss at narrow viewport/zoom | 1.4.10 Reflow, 1.4.4 Resize Text |
| Target size and spacing for interactive controls | 2.5.8 Target Size (Minimum) |
| Visible label for every form field, not placeholder-only | 1.3.1 Info and Relationships, 3.3.2 Labels or Instructions |
| Required fields identified in text, not color alone | 1.4.1 Use of Color, 3.3.2 Labels or Instructions |
| Errors identified, specific, and associated with the field | 3.3.1 Error Identification, 4.1.2 Name, Role, Value |
| Error suggestions provided where known | 3.3.3 Error Suggestion |
| Entered data preserved after a validation error | 3.3.7 Redundant Entry |
| Confirmation step before critical/legal/financial submission | 3.3.4 Error Prevention (Legal, Financial, Data) |
| Dynamic updates communicated (status/alert regions) | 4.1.3 Status Messages |
| Focus managed on modal open/close and route change | 2.4.3 Focus Order, 4.1.2 Name, Role, Value |
| No auto-advancing carousels/content without user control | 2.2.2 Pause, Stop, Hide |
| Motion respects `prefers-reduced-motion` | 2.3.3 Animation from Interactions |
| Captions and transcripts for video/audio | 1.2.2 Captions (Prerecorded), 1.2.1 Audio-only and Video-only (Prerecorded) |
| Iframes/embeds have a meaningful `title` | 4.1.2 Name, Role, Value |
| Accessible alternative to CAPTCHA | 1.1.1 Non-text Content |
| Documents (PDF/Office) have a tagged reading order and real structure | 1.3.1 Info and Relationships, 1.3.2 Meaningful Sequence |

See `standard.md` for the underlying principle each row supports, and `keyboard.md`/`focus.md`/`forms.md`/`color-and-contrast.md`/`documents.md` for the full requirement text.
