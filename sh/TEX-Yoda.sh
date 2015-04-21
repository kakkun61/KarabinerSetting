#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.commandR2controlL 1
/bin/echo -n .
$cli set repeat.initial_wait 300
/bin/echo -n .
$cli set remap.commandL2fn 1
/bin/echo -n .
$cli set remap.space2shiftL_space_fnspace 1
/bin/echo -n .
$cli set remap.controlR2commandR 1
/bin/echo -n .
$cli set remap.mouse_button_4_5_forward_backward 1
/bin/echo -n .
$cli set repeat.wait 33
/bin/echo -n .
$cli set remap.shiftL2commandL 1
/bin/echo -n .
$cli set remap.pointing_relative_fn_to_scroll 1
/bin/echo -n .
$cli set private.iterm2.ctrl_j_to_kana 1
/bin/echo -n .
$cli set general.dont_remap_internal 1
/bin/echo -n .
/bin/echo
