#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.jis_yen2backslash 1
/bin/echo -n .
$cli set remap.eject2forwarddelete_retain_fnEject 0
/bin/echo -n .
$cli set remap.jis_underscore2backslash 0
/bin/echo -n .
