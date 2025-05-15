#Persistent
#SingleInstance Force
DetectHiddenWindows On
SetTitleMatchMode 2

;adsfasfasf
OnMessage(0x404, "AHK_NOTIFYICON")
AHK_NOTIFYICON(wParam, lParam, uMsg, hWnd)
{
	if (lParam = 0x201) ;WM_LBUTTONDOWN := 0x201
	{
		run, C:\Windows\explorer.exe ms-settings:apps-volume
	}
}

Button1 := "loopdotexe.ahk"

; Initialize variable
button1enable := true
run, loopdotexe.ahk

; Menu, Tray, NoStandard
Menu, Tray, NoStandard

; Create tray menu
Menu, Tray, Add, %Button1%, ToggleButton1
Menu, Tray, Add  ; Separator
Menu, Tray, Add, Sound
Menu, Tray, Add  ; Separator
Menu, Tray, Add, Exit, Exit

; Set initial checked state
Menu, Tray, Check, %Button1%

Return

ToggleButton1:
if (button1enable) {
    button1enable := false
    Menu, Tray, Uncheck, %Button1%
    Gosub, ahk1disable
} else {
    button1enable := true
    Menu, Tray, Check, %Button1%
    Gosub, ahk1enable
}
Return

ahk1enable:
run, loopdotexe.ahk
Return

ahk1disable:
WinClose, \loopdotexe.ahk
Return

Sound:
run, %windir%\system32\mmsys.cpl 
return

Exit:
Gosub, ahk1disable
ExitApp
Return

;qwerqwerqwerwqe
#Include mute_current_application.ahk
#Include win-e.ahk

;qwerqwerwerwe
AppsKey::LWin