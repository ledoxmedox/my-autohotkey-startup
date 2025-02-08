#Include systray_uwp_volume_mixer.ahk
#Include blacklistdotexe.ahk
#Include mute_current_application.ahk

; replace_menu_key.ahk
AppsKey::LWin

; XButton1 double click fix
XButton1::	
	If (A_TimeSincePriorHotkey < 150) ;If (A_ThisHotkey = A_PriorHotkey and A_TimeSincePriorHotkey < 350)
		Return
	Send, {XButton1 Down}
	KeyWait, XButton1
	Send, {XButton1 Up}
Return