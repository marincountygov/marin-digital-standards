# Maps

A map is an alternate visualization of data. It must never be the only way to reach any record, and everything it offers must work without a mouse, without vision, and without precise pointing.

## Requirements

- **Text alternative.** Every record on the map is reachable in the product's list. The map also has a text alternative that lists its locations (a list or a dropdown, in alphabetical order, with an "all locations" default) and selects the same details as the markers.
- **Marker names.** Every marker has an accessible name that says what it is: the event and place for one record, the place and how many records for a shared location. Never "Marker" or "Map pin".
- **Role and keyboard.** A marker is a button. Tab reaches it, and Enter and Space choose it. A library that does not do this for you needs the behavior added.
- **Screen readers.** A marker chosen with a screen reader's activation command behaves like a keyboard choice, not like a mouse click.
- **Focus.** Choosing a marker by keyboard or screen reader moves focus to the details, so what opened is read. Escape, or a clear control, returns focus to the marker. A person can always Tab out of the map; the map never traps focus.
- **Visible focus on any basemap.** The focus indicator on markers and map controls stays visible against light, dark, and busy tiles, and in both color schemes.
- **Controls.** Zoom and other controls have names, work with Enter and Space, and meet the target-size requirement. Panning and zooming never need a drag or pinch alone; buttons and keys do the same.
- **No scroll trapping.** The wheel and one-finger drag keep scrolling the page until the person chooses to use the map.
- **Motion.** Pan and zoom animation is off when the person asks for reduced motion.
- **No color-only meaning and no hover-only information.** Markers look the same; details are never in a tooltip alone.
- **Status.** The counts of mapped and unmapped records are text, are updated when the filters change, and are announced as a status message without announcing every pan or zoom.
- **Reflow and zoom.** The map and its details work at 320 CSS pixels wide and at 200% and 400% zoom, with no horizontal page scrolling and no map that pushes every other control off screen.
- **Attribution.** Attribution stays visible and readable.
- **Clusters.** A cluster is a button with a name that says what it holds (for example "3 locations, 7 engagements"), and Enter and Space zoom in, like a click. When the cluster goes away after zooming, focus moves to the map so it is not lost. Choosing a place from the text list or a link elsewhere shows its marker first (zooming out of any cluster), then selects it. Cluster numbers are text with enough contrast, never color alone, and there is no hover-only coverage area.
- **Full window.** The full-window view is a modal dialog: it has a name, the rest of the page is inert while it is open, Tab stays inside it, Escape closes it, and closing returns focus to the control that opened it. The control that opens it is a button whose name changes to say what it will do ("Full window", "Exit full window"). Everything available in the page view (details, list of locations, controls) is available in the full window, and it works at 320 CSS pixels wide and at 400% zoom.

## Testing

In addition to `testing.md`:

- Complete the whole map workflow with the keyboard only: reach the map, reach a marker, choose it, read the details, use a link or button in them, leave the map.
- Check the accessibility tree: marker role and name, control names, and the selected state.
- Test with a screen reader (VoiceOver with Safari at minimum), including activating a marker with the screen reader's own command.
- Test clusters and the full window with the keyboard only and with a screen reader: activate a cluster, confirm where focus lands, open and close the full window, and confirm Escape and focus return.
- Test touch: choosing a marker, the two-finger pan and zoom, and that one-finger scrolling still moves the page.
- Automated scans catch only part of these requirements. Do not report a scan as a conformance result.

## WCAG mapping

1.1.1 Non-text Content, 1.3.1 Info and Relationships, 1.4.1 Use of Color, 1.4.10 Reflow, 2.1.1 Keyboard, 2.1.2 No Keyboard Trap, 2.3.3 Animation from Interactions, 2.4.3 Focus Order, 2.4.7 Focus Visible, 2.5.1 Pointer Gestures, 2.5.8 Target Size (Minimum), 4.1.2 Name, Role, Value, 4.1.3 Status Messages. See `wcag-2.2-mapping.md`.
