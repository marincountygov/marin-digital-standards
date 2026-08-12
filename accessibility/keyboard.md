# Keyboard

All interactive functionality must be operable with a keyboard alone — no exceptions for "advanced" or "power user" features.

## Requirements

- Every interactive element is reachable via Tab and Shift+Tab, in an order that matches visual and logical reading order.
- Standard keys behave as expected: Enter and Space activate controls, Escape closes dialogs/menus, arrow keys and Home/End work where a pattern calls for them (tabs, menus, comboboxes).
- No keyboard trap: a user can always tab into and back out of any component, including third-party embeds and modal dialogs.
- If a component follows a known ARIA design pattern, it implements that pattern's full expected keyboard behavior — not just the role attribute.
- Gestures (swipe, pinch, drag) always have a keyboard/button alternative for the same action; nothing critical is gesture-only.
- Hover-only content (tooltips, hover menus) is also reachable and operable by keyboard.
- Mobile/touch navigation remains keyboard accessible — a responsive menu isn't exempt from these rules just because it's primarily used by touch.

## Do not

- Do not remove focus/keyboard behavior without providing an accessible equivalent (see `focus.md`).
- Do not build a custom interactive control with a `<div>` or `<span>` when a native element (`<button>`, `<a href>`) would work — a custom control has to independently reimplement every keyboard expectation the native element gives you for free.
- Do not require a pointer gesture for a critical action (submitting a form, dismissing a critical alert).

## WCAG mapping

2.1.1 Keyboard, 2.1.2 No Keyboard Trap. See `wcag-2.2-mapping.md` for the full table.
