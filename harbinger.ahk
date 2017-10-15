; harbinger.ahk
;
; author: Trevor Woodman
; date: 2017-10-15
; revision: 1.0
; tested:
;   - Windows 10.0.15603
;   - Emacs 25.2.1 (x86_64-w64-mingw32)
; config: be sure to replace my name with yours
;   so the personalized hotkeys have your name.
;
; ==== CONFIG ====
#SingleInstance FORCE

; ==== ARROW KEYS ====
; home [ctrl+left]
^Left::
    Send,{Home}
Return

; end [ctrl+right]
^Right::
  Send,{End}
Return

; select + home [ctrl+shift+left]
^+Left::
  Send,{Shift down}{Home}{Shift up}
Return

; select + end [ctrl+shift+right]
^+Right::
  Send,{Shift down}{End}{Shift up}
Return

; page up [ctrl+up]
^Up::
  Send,{PgUp}
Return

; page down [ctrl+down]
^Down::
  Send,{PgDn}
Return

; select + pg up [ctrl+shift+up]
^+Up::
	Send,{Shift down}{PgUp}{Shift up}
Return

; select + pg down [ctrl+shift+down]
^+Down::
	Send,{Shift down}{PgDn}{Shift up}
Return

; ==== UTILITY ====
; insert current date YYYY-MM-DD [tilde(~)+d]
::~d::
	Send %A_YYYY%-%A_MM%-%A_DD%
Return

; insert current 24hr time to second, HH:MM:SS [tilde(~)+t]
::~t::
	Send %A_Hour%:%A_Min%:%A_Sec%
Return

; ==== PROGRAMMING/DEVELOPMENT/EMACS ====
; insert personalized TODO
::=todo::
  Send // TODO(trevor):%A_Space%
Return

; insert personalized NOTE
::=note::
  Send // NOTE(trevor):%A_Space%
Return

; insert .emacs comment block
::=com::
	Send `;`; ==== BEGIN XXXX ====`r`n
	Send `;`; ==== END XXXX ====
	Send,{up 1}
Return

; insert header comment block (c++)
::=bcom::
  Send, /* ==================================================`n
  Send, :%A_Space%%A_Space%%A_Space% File:%A_Space%<FILENAME>`n
  Send, :%A_Space%%A_Space%%A_Space% Date:%A_Space%%A_YYYY%-%A_MM%-%A_DD%`n
  Send, :%A_Space%%A_Space%%A_Space% Revision:%A_Space%1.0.0`n
  Send, :%A_Space%%A_Space%%A_Space% Author:%A_Space%Trevor Woodman`n
  Send, :%A_Space%%A_Space%%A_Space% Notice: (C) Copyright %A_YYYY% by Trevor Woodman`n
  Send, %A_Space%%A_Space%%A_Space%`================================================== */`n
  Send,{BackSpace 2}
Return
