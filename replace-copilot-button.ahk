#Requires AutoHotkey v2.0
#SingleInstance
#NoTrayIcon

*<+<#f23:: {
    Send("{Blind}{LShift Up}{LWin Up}{RControl Down}")
    KeyWait("F23", "U")
    Send("{RControl up}")
}
