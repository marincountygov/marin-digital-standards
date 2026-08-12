# Documents

Requirements for content distributed as a downloadable file — PDF, Word, PowerPoint, or email — rather than a web page.

## Prefer HTML

When the content is high-value or frequently accessed, prefer an accessible HTML page over a PDF-only distribution. A PDF is harder to make and keep accessible than a web page, and it's a worse experience on mobile. Reserve PDF for content that genuinely needs to be a fixed, printable, or offline document — and when it's the only path, offer an HTML equivalent alongside it where feasible. Never make a scanned, image-only document the only version of something the public needs.

## Requirements (PDF, Word, PowerPoint, email)

- A clear, descriptive document title is set in file properties, not just visible on the first page.
- Reading order is logical and tagged (PDF) or follows built-in heading/style structure (Word, PowerPoint) — visual layout alone is not structure.
- Real headings, lists, tables, and links exist in the underlying structure/tags, not just styled to look that way.
- Informative images have meaningful alt text; decorative images are marked as decorative/artifacts so assistive technology skips them.
- Document language is identified.
- Tables have clear header cells and simple structure; merged cells are avoided where they'd confuse a screen reader.
- Text is real, searchable, and selectable — not an image of text or a scanned page presented as though it were text.
- Contrast and color-alone rules apply exactly as they do on the web — see `color-and-contrast.md`.
- Security settings (password protection, permissions) don't interfere with assistive technology's ability to read the document.
- A document passes both an automated check and manual review before publication — automated tooling alone doesn't catch tag-tree or reading-order problems reliably.

## WCAG mapping

1.3.1 Info and Relationships, 1.3.2 Meaningful Sequence — WCAG applies to documents the same way it applies to web pages; PDF/Office accessibility standards (PDF/UA, Section 508) layer on top rather than replace it.
