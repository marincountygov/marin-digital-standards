# Text, characters, copy and upload

How an app handles the text people bring in, copy out and save. These rules exist because the same few bugs kept reaching people: a copied heading arrived in a CMS as bold text, a curly apostrophe turned into "�", and a CSV opened in Excel with garbled accents. The implementation is in `marin-app-shell` 1.21.0 and later (`marinCopyRich`, `marinCopyText`, `marinDownload`, `marinReadText`, `marinCleanText`, `marinUpload`). Use those helpers; do not write your own.

## Copy and paste

- **Put clean HTML on the clipboard, not a copied element.** Copying a rendered element carries the page's fonts, sizes, colors and bold weights as inline styles, and a CMS turns a bold heading into `<strong>`. Build semantic HTML (`h2`, `p`, `ul`, `li`, `a`) with no classes and no styles, and pass it to `marinCopyRich`.
- **No `<strong>` or `<b>` unless the content means bold.** A heading is a heading; do not wrap its text.
- **Always put plain text on the clipboard too.**
- **Give a fallback people can use.** When the browser blocks copying, show the text in a box that is selected for the person to copy by hand.
- **Say what happened in the status line** ("Copied."). Say nothing about a fix that went fine.
- **Word, email and CMS pastes need a person to test them.** Tests prove the markup (no `style=`, no `<strong>`); a person pastes into the CMS, Word on Windows and Word on Mac, and records the result.

## Characters

- **Read files as UTF-8, then as Windows-1252.** A file saved from Excel stores a curly apostrophe as one byte. Read with `marinReadText`, never `file.text()` or `readAsText`, which turn those bytes into "�".
- **Never keep or show "�".** It means a character was already lost. Between two letters it was almost always an apostrophe; anywhere else, remove it.
- **Use plain characters in anything that goes to a CMS, a URL or a CSV.** Curly quotes become straight, non-breaking spaces become spaces, and zero-width characters are removed (`marinCleanText`). Text that is only shown on a page keeps its typographic quotes.
- **Do not tell people about silent fixes.** A message about odd characters worries people and gives them nothing to do.
- **An app that must not guess can refuse.** Marin CSV refuses a file that is not UTF-8, because guessing can change data. It says how to fix it: "Save the file as CSV UTF-8 in your spreadsheet program, then open it again."

## Saving files

- **Files are UTF-8.** A CSV starts with a byte-order mark so Excel reads accents and apostrophes correctly. `marinDownload` adds it.
- **Name files for what they are** (`marinmagic-output.md`) and use the right type.
- **Several formats are one button with a menu.** Copy and Download each open a menu that lists Text, HTML, then Markdown, in the same order in both.

## Upload

- **One pattern in every app:** a card headed **Upload** with one sentence, a **Browse files** button, and drop anywhere on the page.
- **The sentence names the file types and where to drop:** "Drag and drop a .csv/.xlsx file anywhere on this page, or use the browse button."
- **Say it stays local when it does:** "Your file stays in this browser."
- **State the file types and the size limit** (see `forms.md`).
- **Use the standard messages.** A wrong type: "Unsupported file type. Upload .csv or .xlsx." Too large: "That file is too large. The limit is 10 MB." Several files dropped when one is expected: "More than one file was dropped. Using the first file: name."
- **Announce the result in the page's status line.** Do not use a dialog.
- **Test with files that break things:** a Windows-1252 file, a file with curly quotes, a wrong type, a file over the limit, and several files dropped at once.
