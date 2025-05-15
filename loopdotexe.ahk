#NoTrayIcon
#Persistent
#SingleInstance Force
DetectHiddenWindows On
SetTitleMatchMode 2

Loop
{
    IfWinActive, ahk_exe dota2.exe
    {
        Suspend, On
        WinWaitNotActive, ahk_exe dota2.exe
        Suspend, Off
    }
    IfWinActive, ahk_exe cs2.exe
    {
        Suspend, On
        WinWaitNotActive, ahk_exe cs2.exe
        Suspend, Off
    }
    ifWinExist, ahk_exe mpc-hc64.exe
	{
		run, mpchc.ahk
		WinWaitClose, ahk_exe mpc-hc64.exe
		WinClose, \mpchc.ahk
	}
	ifWinExist, ahk_exe PotPlayerMini64.exe
	{
		run, potplayer.ahk
		WinWaitClose, ahk_exe PotPlayerMini64.exe
		WinClose, \potplayer.ahk
	}
    Sleep, 500
}