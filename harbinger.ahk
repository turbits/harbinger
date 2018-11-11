; harbinger.ahk
;
; author: Trevor Woodman
; date authored: 15-10-2017
; revision: 1.0
; latest revision: 1.1 (11-11-2018)
; tested:
;   - Windows 10, Version 1803, Build 17134.345
; config: be sure to replace the variable 'USERNAME' with your name instead of mine. :^)
;
; ==== CONFIG ====
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance FORCE
USERNAME := "Trevor Woodman"

; ==== ARROW KEYS ====
; home, [ctrl+left]
^Left::
	Send,{Home}
Return

; end, [ctrl+right]
^Right::
	Send,{End}
Return

; page up, [ctrl+up]
^Up::
	Send,{PgUp}
Return

; page down, [ctrl+down]
^Down::
	Send,{PgDn}
Return

; select + home, [ctrl+shift+left]
^+Left::
	Send,{Shift down}{Home}{Shift up}
Return

; select + end, [ctrl+shift+right]
^+Right::
	Send,{Shift down}{End}{Shift up}
Return

; select + pg up, [ctrl+shift+up]
^+Up::
	Send,{Shift down}{PgUp}{Shift up}
Return

; select + pg down, [ctrl+shift+down]
^+Down::
	Send,{Shift down}{PgDn}{Shift up}
Return

; ==== UTILITY ====
; insert current date DD-MM-YYYY, [tilde(~)+d]
::~d::
	Send,%A_DD%-%A_MM%-%A_YYYY%
Return

; insert current 24hr time to second, HH:MM:SS [tilde(~)+t]
::~t::
	Send,%A_Hour%:%A_Min%:%A_Sec%
Return

; ==== DEVELOPMENT ====
; Change the USERNAME variable at the top of the file!
; insert TODO comment, [=+todo]
::=todo::
	Send,// TODO(%USERNAME%):%A_Space%
Return

; insert FIXME comment, [=+fixme]
::=fixme::
	Send,// FIXME(%USERNAME%):%A_Space%
Return

; insert HACK comment, [=+hack]
::=hack::
	Send,// HACK(%USERNAME%):%A_Space%
Return

; insert NOTE comment, [=+note]
::=note::
	Send,// NOTE(%USERNAME%):%A_Space%
Return

; insert file head comment block (C++, C#, etc), [=+hcom]
::=hcom::
	Send,/* ================================================== `n
	Send,:%A_Space% File:%A_Space%FILENAME `n
	Send,:%A_Space% Date:%A_Space%%A_DD%-%A_MM%-%A_YYYY% `n
	Send,:%A_Space% Revision:%A_Space%1.0.0 `n
	Send,:%A_Space% Author:%A_Space%%USERNAME% `n
	Send,:%A_Space% Notice: Copyright (C) %A_YYYY% by %USERNAME% `n
	Send,%A_Space%%A_Space%%A_Space%`================================================== */ `n
Return
