# Maps

When a Marin product shows where things are, a map is an alternate view of data the product already has. It never replaces the list, and it never holds information the list does not.

## When to use a map

- Use a map when location is part of what people need to decide or find: where an event is held, where a service is offered.
- Do not use a map to show a geographic area a record is about (a district, a neighborhood) unless the product holds real boundaries for it. An area is not a place.
- Every record shown on a map is also reachable without the map, in the product's list or equivalent.

## Location data

- **Location and geographic area are different fields.** Location answers "where is this taking place?" Geographic area answers "what community or area does this concern?" Never infer one from the other.
- **Coordinates are optional.** A record without coordinates is valid and stays in every other view. Virtual and unknown locations are valid too, and get no marker.
- **Never guess coordinates.** Do not geocode in the browser, and do not place a marker from an address the product has not verified. Coordinates come from the source data. When someone looks coordinates up, use an authoritative geocoder, check a second source, and record that a person should confirm them.
- **Validate coordinates.** Latitude and longitude are numbers, come together, and are in range (-90 to 90 and -180 to 180). Bad coordinates fail validation instead of putting a marker in the wrong place. Coordinates outside Marin County are kept and reported for review, because an engagement can legitimately be held elsewhere.
- Use Schema.org terms (`Place`, `PostalAddress`, `GeoCoordinates`, `VirtualLocation`) where the data is structured.

## One set of records

A map reads the same filtered records as the product's other views. It has no filters of its own, and its counts come from the filtered records, not the full data set.

## Basemap

- Choose a basemap provider with the product owner. It must permit the intended public-sector use, need no credentials in the browser, and show its attribution. Required attribution is never hidden or removed.
- Read the provider's usage policy and record it in the product's decision log. A free community tile server may allow light use only; write down what to switch to if traffic grows.
- Map tile images are map content, not interface assets. They are an intentional external integration under `runtime-dependencies.md`: the tile host is allowed in the product's content security policy, recorded in its decision log, and described in its security and privacy information, because the tile host sees each visitor's IP address.
- The map's own code, styles, and any marker artwork are first-party, vendored files, never loaded from a CDN. Keep the library's license with the vendored copy.
- Do not request the visitor's location. A map shows where things are, not where the visitor is.

## Markers and selection

- Use one marker style for every location. Do not use color, shape, or size to mean status, type, project, or anything else.
- Records at exactly the same coordinates share one marker, and the marker's name says how many records it holds. Do not add clustering until the data volume needs it.
- Choosing a marker shows that location's details as ordinary page content next to or below the map, not in a small popup that is hard to read, reach, or dismiss on a phone.
- Choosing a marker is the same action for a mouse, a finger, and a keyboard.
- Offer a way to clear the selection and to re-center the map on all markers.
- Put the selected location in the page address so a link shares what the person sees.

## Counts and missing locations

Say how many of the shown records are on the map and how many are not, with the reason when it is known (virtual, no coordinates, no location). Never let a map suggest the list is shorter than it is.

## Scrolling and touch

- The map must not trap scrolling. The mouse wheel and a one-finger drag keep scrolling the page until the person chooses to use the map; on touch screens, panning and zooming use two fingers.
- Controls and markers are real buttons with sizes that meet the target-size requirement.

## Links to other services

Links that open another service, such as directions, open only when chosen, say they open in a new tab, and send nothing before then.

## Related standards

- `runtime-dependencies.md` — local-first assets, and when an external integration is allowed.
- `../accessibility/maps.md` — accessibility requirements for maps.
- `../security/standard.md` — content security policy additions for a tile host.
- `navigation.md` and `errors-and-recovery.md` — empty states and findability.

Implementation guidance and the review workflow are in `marin-skills/map-views`.
