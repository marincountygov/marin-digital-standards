# 2026-11-26 — Card colors and padding

Added to the interaction design page, "Cards":

- A card whose colors change with a state changes them through the card's three color properties, not by restyling the card.
- A card that holds one main thing may have more padding.

Affected standards:

- `product-design/interaction-design.md`

Implementation: Marin UI 1.43.0 and App Shell 2.8.0. The last five cards that drew their own surface (Marin Docs' SOP cards, Marin Brand's logo cards, two Marin Learn panels and Meeting Meter's idle summary card) now use the shared card.
