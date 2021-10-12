; ----------------------------------------------------------
;  _   _   ___  ____________ _____ _   _ _____  ___________ 
; | | | | / _ \ | ___ \ ___ \_   _| \ | |  __ \|  ___| ___ \
; | |_| |/ /_\ \| |_/ / |_/ / | | |  \| | |  \/| |__ | |_/ /
; |  _  ||  _  ||    /| ___ \ | | | . ` | | __ |  __||    / 
; | | | || | | || |\ \| |_/ /_| |_| |\  | |_\ \| |___| |\ \ 
; \_| |_/\_| |_/\_| \_\____/ \___/\_| \_/\____/\____/\_| \_|
; ----------------------------------------------------------
; harbinger.ahk
;
; author: @turbits
; date authored: 15-10-2017
; revision: 1.4.2 (12-10-2021)
; revisions:
;    - https://github.com/turbits/harbinger/releases
; tested:
;    - Windows 10:
;	     - 1803/Build 17134
;        - 1909/Build 18363
;        - 21H1/Build 19043
; config:
;    - Change USERNAME to an identifier you want to use on TODOs, etc
;
; ==== AHK CONFIG ====
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance FORCE
USERNAME := "trevor"

; ==== ARROW KEYS ====
; I removed some of the functionality here.
; For all of the the arrow key functionality revert to 1.1
; ----
; home; [alt+left]
!Left::
	Send,{Home}
Return

; end; [alt+right]
!Right::
	Send,{End}
Return

; select + home; [alt+shift+left]
!+Left::
	Send,{Shift down}{Home}{Shift up}
Return

; select + end; [alt+shift+right]
!+Right::
	Send,{Shift down}{End}{Shift up}
Return

; ==== UTILITY ====
; insert current date DD-MM-YYYY; [tilde(~)+da]
:*:~da::
	Send,%A_DD%-%A_MM%-%A_YYYY%
Return

; insert fancy date DD MMMM YYYY; [tilde(~)+df]
:*:~df::
	Send,%A_DD% %A_MMMM% %A_YYYY%
Return

; insert current 24hr time to second; HH:MM:SS [tilde(~)+tt]
:*:~tt::
	Send,%A_Hour%:%A_Min%:%A_Sec%
Return

; insert current 24hr time to minute; HH:MM [tilde(~)+tr]
:*:~tr::
	Send,%A_Hour%:%A_Min%
Return

; insert full datetime string, DD-MM-YYYY HH:MM:SS; [tilde(~)+dt]
:*:~dt::
	Send,%A_DD%-%A_MM%-%A_YYYY% %A_Hour%:%A_Min%:%A_Sec%
Return

; insert full datetime string UTC (I use this in MySQL); YYYY-MM-DD HH:MM:SS [tilde(~)+dz]
:*:~dz::
	FormatTime, vDateStamp, %A_NowUTC%, yyyy-M-dd HH:mm:ss
	Send,%vDateStamp%
Return

; insert full datetime string (fancy), DD MMMM YYYY HH:MM:SS; [tilde(~)+dft]
:*:~dft::
	Send,%A_DD% %A_MMMM% %A_YYYY% %A_Hour%:%A_Min%:%A_Sec%
Return

; ==== DEVELOPMENT ====
; Change the USERNAME variable at the top of the file!
; insert TODO comment; [=+todo]
:*:=todo::
	Send,// TODO(%USERNAME%):%A_Space%
Return

; insert FIXME comment; [=+fixme]
:*:=fixme::
	Send,// FIXME(%USERNAME%):%A_Space%
Return

; insert HACK comment; [=+hack]
:*:=hack::
	Send,// HACK(%USERNAME%):%A_Space%
Return

; insert NOTE comment; [=+note]
:*:=note::
	Send,// NOTE(%USERNAME%):%A_Space%
Return
