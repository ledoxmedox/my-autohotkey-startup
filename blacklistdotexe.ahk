SetTitleMatchMode, 2
DetectHiddenWindows,on

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
		run, toggle_override_all_styles_MPC-HC.ahk
		WinWaitClose, ahk_exe mpc-hc64.exe
		WinClose,\toggle_override_all_styles_MPC-HC.ahk
	}
    Sleep, 500
}