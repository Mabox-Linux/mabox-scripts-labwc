labshot(1)

# NAME

labshot - a helper for screenshots within labwc

# SYNOPSIS

*labshot* [--notify] [--cursor] [--wait N] (copy|save) [TARGET] [FILE]++
*labshot* check++
*labshot* usage

# OPTIONS

*--notify*
	Show notifications to the user that a screenshot has been taken.

*--cursor*
	Include cursors in the screenshot.

*--wait N*
	Wait for N seconds before taking a screenshot. Waits after any
	manual selection is made. Recommended to combine with --notify in
	order to know when the screenshot has been taken.

*save*
	Save the screenshot into a regular file. Labshot will write image
	files to *XDG_SCREENSHOTS_DIR* if this is set (or defined
	in *user-dirs.dir*), or otherwise fall back to *XDG_PICTURES_DIR*.
	Set FILE to '-' to pipe the output to STDOUT.

*copy*
	Copy the screenshot data (as image/png) into the clipboard.

**savecopy**
	Save the screenshot into a regular file (see _save_ documentation) and
	copy the screenshot data into the clipboard (see _copy_ documentation).

# DESCRIPTION

Labshot is an easy-to-use screenshot utility for labwc. It provides a
convenient interface over grim, slurp and jq, and supports storing the
screenshot either directly to the clipboard using wl-copy or to a file.


# TARGETS

labshot can capture the following named targets:


_screen_
	Captures the entire screen. This includes all visible outputs.

_area_
	Allows manually selecting a rectangular region, and captures that.


# OUTPUT

Labshot will print the filename of the captured screenshot to stdout if called
with the _save_ or _savecopy_ subcommands.

# SEE ALSO

*grim*(1)
