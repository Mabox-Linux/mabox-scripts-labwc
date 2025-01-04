LABPICKER(1)

# NAME

labpicker - a simple color picker for wlroots

# SYNOPSIS

*labpicker* [_OPTIONS_]

# OPTIONS

*-p*, *--print*
	Print to stdout

*-d*, *--draw*
	Draw a colored block

*-e*, *--escape*
	Print shell escape sequences

*-c*, *--copy*
	Copy to clipboard

*-n*, *--notify*
	Send a notification

*-h*, *--help*
	Show help message and quit

*-v*, *--version*
	Show version number and quit

# DESCRIPTION

*labpicker* is a color picker that uses *slurp* and *grim*.
These programs rely on _zwlr_layer_shell_v1_ and _wlr-screencopy-unstable-v1_
(maybe be replaced with _ext-image-capture-source-v1_ and
_ext-image-copy-capture-v1_ in the future) wayland protocols
(implemented in wlroots-based compositors, e.g. *sway*).

It has several output options, they can be combined.

_--copy_ needs *wl-clipboard* to be installed.

_--draw_ and _--escape_ need a terminal with truecolor support (e.g. *foot*).

_--notify_ needs *libnotify* to be installed
and a notification daemon (e.g. *mako* or *fnott*) to be running.

_--print_ and _--draw_ are selected by default if no arguments are provided.


# SEE ALSO

*slurp*(1), *grim*(1), *labshot*(1)
