# To-do list

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.10.0] - undetermined date

### Added

- Plugin support: probably written in Scheme with some additions, loaded from external .ip files, but still need to think in more detail about this.
- Some sort of support for update checking for plugins, in case their authors wish to implement such feature.
- Plugin with spell/grammar checker for Ʇihittuh, as its characteristics allow to implement these relatively easy.
- Specific easter egg, enabled through settings (ʇusisusʇkits).

## [0.9.0] - undetermined date

### Added

- Integration with prettier for formatting HTML, CSS, JS, TS, JSX, JSON, PHP.
- Integrating with clang-format for formatting C/C++.
- Autoformatting for Scheme.
- Integration with shell: terminal input/output panes, select specific type of shell/environment (i.e. for Windows: cmd, Windows Terminal, Powershell etc).
- Integration with shell: ability to add "commands" per project/files, i.e. shell scripts which show as additional menu entries and can be assigned hotkeys.
- Integration with git.
- Breakpoint, hosting and building capabilities for HTML, JS, PHP.
- Breakpoint and building capabilities + gdb and valgrind integration for C/C++.
- Breakpoint and building capabilities for Scheme and Ʇihittuh.
- Emmet for HTML, CSS, JS, TS, JSX, PHP and other autocompletion features for C/C++, Scheme, Ʇihittuh.

## [0.8.0] - undetermined date

### Added

- More of C++ syntax support.
- CMakeLists and makefile syntax.
- HTML, CSS, JS, TS, JSX, JSON syntax support.
- PHP syntax support.
- Shell syntax support.
- Windows .bat-file syntax support.
- Powershell syntax support.
- Scheme syntax support.
- Ʇihittuh syntax support.
- Different encodings support: UTF-8, CP-1251, CP-866, ASCII only.
- Different line endings: Windows, Unix-like, Mac.
- Command to convert to some other encoding; ask for confirmation from user when trying to convert into encoding with loss of information.
- Command to convert line endings to a different style.
- Support 5-bit latin-only encoding.
- Support opening archives as directories: .zip, .tar.gz, .bic.

## [0.7.0] - undetermined date

### Added

- Convert selection to lowercase/to uppercase.
- Display Unicode characters properly, if possible.
- Insert Unicode characters through separate prompt or key combo, Ctrl+Shift+U first and then a code followed by a whitespace (space, line break, tab).
- Local clipboard pane holding multiple elements (number is determined by a new file type/specific file option); the last element should mirror the system clipboard's one; hotkey to paste is Ctrl+Shift+V + number + whitespace.
- Column selection mode, cut/copy/paste adaptation.
- Multiple cursor mode, cut/copy/pase adaptation.
- Calculate arithmetic expression in selection, including column/multicursor selections.
- Autoincrement numbers/letters in column/multicursor selection.

## [0.6.0] - undetermined date

### Added

- Option: line numbers, default: on.
- Ctrl+G command to go to line (and optionally column, scheme is "L[:C]").
- Navigation across text with Ctrl+arrows/HJKL.
- "Select all" command.
- Selection with Shift+arrows/HJKL.
- Selection with Ctrl+Shift+ArrowLeft/ArrowRight/Alt+H/Alt+L.
- Copy selection into clipboard and paste from clipboard.
- Cut selection into clipboard.
- Cut or copy current line if there was no selection.
- If something was selected when pasting from clipboard – replace selected characters with pasted content.
- Ctrl+D command to duplicate current line (if no selection) or current selection.
- Move current line up/down with Ctrl+Shift+ArrowUp/ArrowDown/Alt+K/Alt+J.

## [0.5.0] - undetermined date

### Added

- Multiple tabs with different files, indicate file "dirtiness" in tab title.
- Open help as a separate read-only tab plus print help instead of starting editor when using -h/--help argument.
- Support for additional panes: different placement and size.
- Tree view pane for the working directory.
- If editor was given an argument, pointing to a file, then editor opens in a single tab without tree pane; if it points to a directory, then editor opens in a multi-tab mode with tree pane.
- Option: autosave "dirty" files when changing active tab inside the editor.
- Statistics per file: lines (all/non-empty), symbols (all/non-whitespace), words.
- Statistics per directory: same as per file in total, same as per file per file type, statistics about file types.
- Ask user when trying to exit with unsaved changes & list unsaved file paths/names.
- Detect if file is read-only based on permissions & indicate that in the tab title.
- Hotkeys for: open, save, open in new tab, save as, save as and open in new tab, new file in current tab, new file in new tab.
- Show diff between "dirty" version of a file and its last saved one, probably in a new read-only tab.
- User-defined custom collapse regions, auto-detected collapse regions based on the file types, collapse regions pane allowing to navigate between them.
- File "todo"/"TODO" autodetection + browsing pane; probably should consider any such string in plain text documents as valid, but in code file types – only those present in comments.
- User-defined bookmarks in file + bookmark browsing pane; also allow assignment of shortcuts for bookmarks.
- File structure view depending on the file type, class/object hierarchy or something similar.
- Search and navigation between search results inside one file.
- Search and navigation between search results inside a directory.
- Search results pane and search history.
- Search & replace: navigation between results inside a file/directory, results pane and history.
- Pane with recent files and pane with recent directories.
- History: undo, redo, history depth per directory/specific file.
- Non-linear history, its visualization and management tools.

## [0.4.0] - undetermined date

### Added

- Global config option: language; English & Russian for starters, default: English.
- Global config options: reassignable shortcuts.
- Import/export global/directory/file type/specific file settings; probably in some sort of ASCII-encoded binary format.
- Option: keep action history alongside the local config for file and restore it when opening the file again, default: off.
- Option: keep action history in memory or in the temporary file; the latter will be deleted when user closes the editor, if option to save action history is disabled, default: in file.

## [0.3.0] - undetermined date

### Added

- Option: colors usage (e.g. syntax highlighting) on/off, default: on.
- Detect whether user's terminal supports colors or not; if not, then turn off colors.
- First two file types: Plain text and C.
- Option: keep auto indentation when inserting new lines, default: on.
- Option: soft wrap, default: off.
- Option: hard wrap: default: off.
- Options for hard wrap: at which column break should occur (default: 120), break by characters or by words (default: words), keep line indentation or not (default: keep).
- Option: column(s) to permanently highlight, default: 80 and 120.
- Option: highlight active line, default: on.
- Option: show line numbers, default: on.
- Separate options for showing whitespace (spaces, tabs and linebreaks): show or not (default: all on), what characters to use for their representation (space: "·", tab: "¬", linebreak: "¶").
- Adjustable colors for highlighting different elements of different file types. Default highlghting schemes for different file types should be loaded from external *.ih files, so also should think about where to load these (and future plugins) from.
- Option: remove whitespaces at end of lines when saving file, default: on.
- Option: what to do with empty lines at the end of file when saving: a) do nothing; b) remove them; c) keep only one empty line (or add if necessary), default: b).
- Option: autosave "dirty" files every n seconds/minutes, default: off (0m0s).

## [0.2.0] - undetermined date

### Added

- Global configuration file; editor probably should look for it in PATH directories.
- If no global config file was found, ask user upon start if they wish to create one and where.
- Create local configs per working directory/opened file.
- Two separate options in the global config to toggle on/off creating local configs for directories/files; by default both should be disabled.
- Overall option application hierarchy: global config (per file type) -> project config (per file type) -> file-specific config.
- Non-global options UI as a table, where columns are file types and rows are options. Unless directly stated otherwise, any options mentioned in the change log/to-do list are supposed to be put there and therefore can be global, file type or file-specific.
- Two first non-global options to test aforementioned features: tab size and toggling on/off tab replacement with spaces.

## [0.1.0] - 2023-09-03

### Added

- Creating new files & saving them. For now UTF-8 encoding & Unix-style line breaks are assumed.
- Opening existing files & overwriting them.
- Horizontal & vertical scrolling of file contents.
- Status bar, displaying current line and column.
- Navigation through file contents with: arrow keys, Alt+HJKL, Home, End, Page Up, Page Down.
- Typing new text, line breaks and tabs; erasure using Backspace and Delete.
- Toggling insert mode on/off.
- Working builds for Linux and Windows OS through GitHub actions.
