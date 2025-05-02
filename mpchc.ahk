#NoTrayIcon
#SingleInstance
SetTitleMatchMode, 2

Loop
{
	IfWinActive, ahk_exe mpc-hc64.exe
    {
        Suspend, Off
        WinWaitNotActive, ahk_exe mpc-hc64.exe
        Suspend, On
    }
    Sleep, 500
}

[::PgUp

]::PgDn

\::
Send {Alt}
Send {p}
Send {b} 
Send {Down}
Send {Down}
Send {Down}
Send {Down}
Send {Down}
Send {Enter}
Return