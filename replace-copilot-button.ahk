#Requires AutoHotkey v2.0
#SingleInstance
#NoTrayIcon

; Lshift + Lwin + F23
; to 
; Rtrl
;
*<+<#f23:: {
    Send("{Blind}{LShift Up}{LWin Up}{RControl Down}")
    KeyWait("F23", "U")
    Send("{RControl up}")
}

; Lshift + Lwin + S 
; to 
; PrtScn
;
#+s:: {
    Send("{Blind}{LShift Up}{LWin Up}{PrintScreen Down}")
    KeyWait("s", "U")
    Send("{PrintScreen Up}")
}

; Lshift + Lalt + Lwin + S
; to
; Lalt + PrtScn
;
#+!s:: {
    Send("{Blind}{LShift Up}{LWin Up}{LAlt Up}{Alt Down}{PrintScreen Down}")
    KeyWait("s", "U")
    Send("{PrintScreen Up}{Alt Up}")
}
