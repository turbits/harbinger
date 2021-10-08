; harbinger.ahk
;
; author: @turbits
; date authored: 15-10-2017
; revision: 1.3
; revisions:
;    - 1.1 (11-11-2018)
;    - 1.2 (07-06-2020)
;    - 1.3 (08-10-2021)
; tested:
;    - Windows 10, Version 1803, Build 17134.345
;    - Windows 10, Version 1909
;    - Windows 10, Version 21H1, Build 19043
; config:
;    - Change USERNAME to an identifier you want to use on TODOs, etc.
;
; ==== AHK CONFIG ====
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance FORCE
USERNAME := "trevor"

; ==== ARROW KEYS ====
; I removed all of the functionality here.
; For the Ctrl/Shift/Arrow key functionality revert to 1.1

; ==== UTILITY ====
; insert current date DD-MM-YYYY, [tilde(~)+d]
::~d::
	Send,%A_DD%-%A_MM%-%A_YYYY%
Return

; insert fancy date DD MMMM YYYY
::~df::
	Send,%A_DD% %A_MMMM% %A_YYYY%
Return

; insert current 24hr time to second, HH:MM:SS [tilde(~)+t]
::~t::
	Send,%A_Hour%:%A_Min%:%A_Sec%
Return

; insert full datetime string, DD-MM-YYYY HH:MM:SS [tilde(~)+dt]
::~dt::
	Send,%A_DD%-%A_MM%-%A_YYYY% %A_Hour%:%A_Min%:%A_Sec%
Return

; insert full datetime string UTC (I use this in MySQL), YYYY-MM-DD HH:MM:SS [tilde(~)+dz]
::~dz::
	FormatTime, vDateStamp, %A_NowUTC%, yyyy-M-dd HH:mm:ss
	Send,%vDateStamp%
Return

; insert full datetime string (fancy), DD MMMM YYYY HH:MM:SS [tilde(~)+dft]
::~dft::
	Send,%A_DD% %A_MMMM% %A_YYYY% %A_Hour%:%A_Min%:%A_Sec%
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
