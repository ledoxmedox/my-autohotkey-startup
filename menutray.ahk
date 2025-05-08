#Persistent
Menu, Tray, Add  ; separator
Menu, Tray, Add, Sound, Sound
return

Sound:
run, %windir%\system32\mmsys.cpl 
return