#NoTrayIcon
#SingleInstance
SetTitleMatchMode, 2

Loop
{
	IfWinActive, ahk_exe PotPlayerMini64.exe
    {
        Suspend, Off
        WinWaitNotActive, ahk_exe PotPlayerMini64.exe
        Suspend, On
    }
    Sleep, 500
}

[::PgUp

]::PgDn

toggle := false  ; Global toggle variable

t::
toggle := !toggle  ; Flip the toggle state (true/false)

Send +{F10}
Send {Down 6}
Send {Right}
Send {Down 12}
Send {Right}

if (toggle) {
    Send {Enter}
} else {
    Send {Down}
    Send {Enter}
}
return