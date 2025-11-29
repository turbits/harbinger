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
; requires: AutoHotkey v2.0^
; author: @turbits
; github: https://github.com/turbits/harbinger
; website: https://turbits.sh
; initial release: 1.0 (OCT-15-2017)
; last revision: 1.5 (OCT-12-2021)
; current revision: 1.6.0 (NOV-29-2025)
; releases:
;    - https://github.com/turbits/harbinger/releases
; tested:
;    - Windows 11 Pro 24H2 (NOV-29-2025), AutoHotkey 2.0.19
; config:
;    - Change USERNAME to an identifier you want to use on TODOs, etc. By default will use current logged in user
;
; ==== AHK CONFIG ====
SendMode("Input")
SetWorkingDir(A_ScriptDir)
#SingleInstance Force
USERNAME := A_UserName

; ==== ARROW KEYS ====
; home; [alt+left]
!Left:: {
    Send("{Home}")
}

; end; [alt+right]
!Right:: {
    Send("{End}")
}

; select + home; [alt+shift+left]
!+Left:: {
    Send("{Shift down}{Home}{Shift up}")
}

; select + end; [alt+shift+right]
!+Right:: {
    Send("{Shift down}{End}{Shift up}")
}

; ==== UTILITY ====
; insert current date DD-MM-YYYY; [tilde(~)+da]
:*:~da:: {
    Send(Format("{1:02}-{2:02}-{3:04}", A_DD, A_MM, A_YYYY))
}

; insert fancy date DD MMMM YYYY; [tilde(~)+df]
:*:~df:: {
    Send(Format("{1} {2} {3}", A_DD, A_MMMM, A_YYYY))
}

; insert current 24hr time to second; [tilde(~)+tt]
:*:~tt:: {
    Send(Format("{1:02}:{2:02}:{3:02}", A_Hour, A_Min, A_Sec))
}

; insert current 24hr time to minute; [tilde(~)+tr]
:*:~tr:: {
    Send(Format("{1:02}:{2:02}", A_Hour, A_Min))
}

; insert full datetime string, DD-MM-YYYY HH:MM:SS; [tilde(~)+dt]
:*:~dt:: {
    Send(Format("{1:02}-{2:02}-{3:04} {4:02}:{5:02}:{6:02}", A_DD, A_MM, A_YYYY, A_Hour, A_Min, A_Sec))
}

; insert full datetime string UTC; YYYY-MM-DD HH:MM:SS; [tilde(~)+dz]
:*:~dz:: {
    vDateStamp := FormatTime(A_NowUTC, "yyyy-MM-dd HH:mm:ss")
    Send(vDateStamp)
}

; insert full datetime string (fancy), DD MMMM YYYY HH:MM:SS; [tilde(~)+dft]
:*:~dft:: {
    Send(Format("{1} {2} {3} {4:02}:{5:02}:{6:02}", A_DD, A_MMMM, A_YYYY, A_Hour, A_Min, A_Sec))
}

; ==== DEVELOPMENT ====
; Change the USERNAME variable at the top of the file!
; insert TODO comment; [=+todo]
:*:=todo:: {
    Send(Format("// TODO({1}): ", USERNAME))
}

; insert FIXME comment; [=+fixme]
:*:=fixme:: {
    Send(Format("// FIXME({1}): ", USERNAME))
}

; insert HACK comment; [=+hack]
:*:=hack:: {
    Send(Format("// HACK({1}): ", USERNAME))
}

; insert NOTE comment; [=+note]
:*:=note:: {
    Send(Format("// NOTE({1}): ", USERNAME))
}
