# 2026-11-25 — App header, heading sizes, the MarinOS menu and room below the page

Added to the navigation, typography and responsive design pages:

- The app header holds only the app's own tabs. About, Updates, Security, Accessibility and Tech are in the footer of every app. An app with no tabs has no Menu button.
- The MarinOS menu is a vertical list on narrow screens and a wide horizontal grid on large ones. An unlisted app is left out of it.
- A page that features apps shows them in an Apps section with a link to a page of every app, and a card shows its status only.
- An h1 has one of two sizes: the app title (1.35 to 1.75rem) and the page title (1.75 to 2.25rem).
- The last section of a page has 4.5rem of space below it.

Affected standards:

- `product-design/navigation.md`
- `brand/typography.md`
- `product-design/responsive-design.md`

Implementation: Marin UI 1.41.0 (`docs/components.md`: "Heading sizes", "MarinOS menu (banner)", "Standard app nav") and App Shell 2.6.0, which every app installed in the same round.
