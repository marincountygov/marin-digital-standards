# Interaction design

Turning a service into a concrete sequence of resident actions.

## Core rules

- Write steps in the order residents actually perform them, not the order the department processes them internally.
- Start each step with a verb.
- Keep each step to one action where possible.
- Separate required steps from optional, conditional, or follow-up ones.
- State what the resident needs *before* each step and what they receive *after* it.
- Never present a County back-office step as a resident step unless the resident must act on it.

## Buttons

- **Quiet by default.** A button that does something other than submit a form (Copy, Link, Download, Reset, Next) uses one shared quiet design: no fill, a border on hover. Only the button for the main result of a screen is solid blue or dark: the one that submits a form or finishes the task ("Anonymize and download," "Create encrypted ZIP"). A screen has at most one solid button. Choosing a file, clearing, resetting and the like are quiet. A call to action that opens a form is also solid.
- **Every Copy button offers the same three formats in the same order: Text, HTML, Markdown.** Copy is one icon button with a menu ("Copy, choose a format"); Text copies rich text for pasting into a visual editor, HTML and Markdown copy the source. A card's copy button follows the same rule. The shell builds the three from a page (`marinContentFormats`) or from an app's own data (`marinFormatMenus`).
- **A button that copies the address is Copy link, with the link icon.** Never a share icon or the word "Share": it copies a link and shares nothing. Where there is also a Copy menu, Copy link stays its own button.
- **One standard order for page actions: Copy link, Copy, Download, then Print and anything the app adds.** Reset sits apart from them. Copy and Download are icon-only; when there are several formats each is one button with a menu, and the button's name says so ("Copy, choose a format"). Every icon button has an `aria-label` and a `title`, and a menu button reports `aria-expanded`.
- **Previous and Next carry an arrow on the outside:** a left arrow to the left of Previous and a right arrow to the right of Next. The arrows are decoration and hidden from assistive technology (`aria-hidden`).
- **Next is solid and Previous is quiet in a step-by-step flow.** In a report builder, wizard or guided workflow, the button that moves to the next step is the main action. It is the one solid button, keeps its words ("Next: coverage", with the next step's name in lowercase) and ends with a right arrow, drawn with `data-icon-end="arrow-right"`. Previous sits to its left as a quiet, icon-only button with a left arrow (`data-icon="arrow-left"`), the same as Copy, Print and Download, 44 by 44 pixels, named by `aria-label` and `title` ("Previous: details"). The first step has no Previous and the last has no Next. The arrows are decoration.
- **Icon-only for repeated utility actions.** Copy, Link, Download, Reset, Undo and Redo, Add, Delete, Next and Previous, and Show password show an icon and no text. The name is set with `aria-label` and the same words appear as a hover tooltip (`title`).
- **Keep the words** on the one main action of a screen, on dialog buttons (Cancel, Close, Save, Discard changes), and on anything without a clear, familiar icon (Choose file, Generate password). A word button is still quiet unless it is the main action, and an icon may follow the word ("Learn more" with an arrow).
- **Danger is quiet until pointed at.** A button that deletes or discards turns red on hover and focus, and its name says what it removes. A confirmation dialog names the thing and uses words.
- **Cluster related buttons.** Buttons for related actions sit together in one labeled group, not scattered.
- **Space the buttons people press often.** A pair pressed often or on touch, such as Previous and Next, is two separate buttons with a gap and a 44 by 44 pixel target. Do not join them edge to edge: people with limited fine motor control, or wide fingers, press the wrong one.
- **Tabs, filter chips and sort headers are not action buttons.** Tabs switch the view and show the chosen tab with `aria-selected`. Filter chips are toggles with `aria-pressed`. A sortable column header is a button that reads as the header text, with `aria-sort` on the header cell.
- **A button that opens a menu** (Share, Download with more than one format) is an icon button with a caret, `aria-expanded` and `aria-controls`. A single action does not need a menu.
- **A form does only form functions.** No decorative icons or other embellishments (see `forms.md`).

## Filtering, sorting and saying what is shown

Every page with a filter column beside a list of results looks and works the same, so people who learn one know the next. `marin-mentions` and `marin-reach` are the references.

- **Only a page with a list to search or filter has a filter column.** A page with nothing to filter has none, and a page opened from a catalog (a course, a note, a detail page) has none. Do not add one to match another app.
- **The filter column is drawn from one file, not written by hand.** Each app lists its filters in a `filters.json` that follows Marin UI's `filter-panel.schema.json`, and the shared App Shell draws the column: the title, search, Reset, the filter groups, the spacing, the scrolling and the keyboard and focus behavior are the same in every app because one component owns them. An app does not copy sidebar markup, and a check fails if it does.
- **The words come from that file.** Every group shows its name as a plural noun ("Departments", "Monitors", "Sources"). A group with nothing chosen reads "All" and the plural noun ("All departments"), never "Any status". Choices are read from the app's own data. No filter has a hidden name.
- **Filters are multi-select unless the choices exclude each other.** A filter lets people combine choices (checkboxes): an item shows when it has any chosen value in a filter, and it must match every filter that has a choice. A choice of one (a drop-down or radio buttons) is only for choices that cannot be combined because something confines them: a time range, a year, a version, a budget book. Themes, departments, categories and statuses are never a drop-down.
- **No placeholder text.** Search, and every other field, is named by its visible label, not by text inside the box.
- **The filter column is titled "Filter".** Just that word, with the Reset icon button beside it. Not "Filter Mentions", "Filter software" or "Filter vendors".
- **Search is the first field** in the filter column, labelled "Search". It never goes in the toolbar. It has no placeholder.
- **Sort is a group of icon buttons in the toolbar,** not a dropdown in the filter column. Each button is named by `aria-label` and `title` ("Value, high to low", "Name, A to Z"), shows the active sort with `aria-pressed`, and sits in a group labelled "Sort". The group comes first in the toolbar, before Copy link, Copy and Download. Offer a sort for each thing people compare: name (A to Z, Z to A), amount or size (high to low, low to high), date (newest, oldest). Hide the group on a view with nothing to sort, such as charts.
- **Reset returns to the starting view.** The Reset icon in the filter column deselects every filter, clears the search, restores a choice of one to its default (the latest, even if that means opening another page), collapses every filter group and goes back to the first tab. It does not change sort or view.
- **One "Showing:" line says what is on screen.** It sits under the tabs and above the toolbar, in bold, and reads "Showing: All departments · All types · Any status · All years (1,648 vendors, 5,236 contracts — Active 2,129, Terminated 3,107)": each filter in order (its choice, or its "All" words), then the count in brackets with a short breakdown. It is the only count. Do not add "N of M results" above or below the list, filter chips, or buttons for it. The line is a live region (`aria-live="polite"`) so a screen reader hears it change. Every filter in the column is part of it, including a choice of one such as the year, and the breakdown is never left out, even when every value but one is zero.
- **The sort, the filters and the view are in the address,** so the Copy link button shares exactly what is on screen.
- **The column keeps accessibility so the app does not have to.** A field tabbed into view is never hidden under the pinned title; a long list scrolls inside the column; the count of results is announced once, after the person stops typing, and Reset is offered when nothing matches; a choice that cannot be used (a date range that ends before it starts) says why; no option is ever disabled, so every option stays reachable by keyboard; the column works at 320 px and with forced colors.
- **Service areas, departments and agencies run A to Z.** Wherever a list, table, card grid, chart or filter group names service areas, departments, divisions, agencies or other County bodies, they are in alphabetical order by name, and a list of them opens sorted by name ("Name, A to Z" is the pressed sort). Other sorts stay available. A chart titled as a ranking ("Largest departments") may order by amount. A page that reproduces a printed book (a schedule) keeps the book's order.
- **Stats shows only what is relevant to the filter.** A summary of the whole (such as the County overview) appears under Stats only while nothing narrows the selection (no search and no filter choice; the year is not a filter). Once a filter is chosen, Stats shows the figures for that selection alone.

## Steps layout

A workflow of several steps, where the whole app is the sequence (a guided process, a wizard), shows the steps in a list, shows one step at a time, and says where the person is.

- **List the steps in a collapsible vertical column** beside the step. Number them in the words ("1. Prepare"), never in a circle or other shape. No icons or images in the list.
- **Say the state in words.** Each step reads "Completed", "Current" or "Up next". Color, bold weight and a bar on the edge may reinforce the words but never carry the meaning alone (WCAG 1.4.1). Every color pair meets the contrast minimum in light and dark mode.
- **Completed means earlier.** The steps before the current one read as completed. The app does not save progress to say so.
- **Let people go anywhere.** Any step can be opened at any time, to go back or to skip ahead. Previous and Next follow the button rules above.
- **Show where the person is** with a line such as "Step 2 of 6: Analyze" and a progress bar. The line is a polite status for screen readers.
- **Give each step the same parts:** a heading, a one-line intro, then bordered sections for what to do, any fields or actions, and what comes next. Fields follow `forms.md`.
- **Add "On this page"** for the current step: links to its sections, in words that still make sense read alone.
- **Work without script and in print.** Without JavaScript every step shows and the list links jump down the page. Print shows every step.
- **Move focus to the step heading** when the person changes step, and keep the step in the address so Back and shared links work.

## Flow types

- **Linear flow** — every resident follows the same path. Example: check eligibility → gather documents → complete application → pay → submit → save confirmation → wait for review.
- **Branching flow** — the next step depends on eligibility, location, service type, fee status, prior approval, account status, or documentation. Write branches as explicit conditionals: "If [condition], [action]." Always include a "not sure" path to help.
- **Channel-choice flow** — the resident can complete the task online, by phone, by mail, by email, or in person. For each channel state who should use it, what they need, how long it takes, whether the result is the same, and what confirmation they receive.

## What makes a flow ready

A resident can complete it without needing to infer a missing prerequisite, internal process detail, timing, or recovery option. Concretely: can they tell what to do first · are steps ordered by resident action rather than department process · are hidden prerequisites surfaced · are required documents introduced before the form begins · is payment placed at the right point · does the flow explain what happens after submission · are exceptions and recovery paths visible · is every step actually necessary (no duplicate steps or repeated data entry).

## Related standards

- `service-design.md` — the journey a flow is drawn from.
- `forms.md` — the specific case of a transactional flow (form, payment, upload).
- `marin-digital-standards/accessibility/keyboard.md` and `focus.md` — the corresponding operability requirements once a flow becomes an actual interface.
