#Requires AutoHotkey v2.0

exe := "ahk_exe "

; SpeedCrunch
; SpeedCrunch path: "C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe"

speedCrunch := "C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe"

#HotIf Not WinExist(exe speedCrunch)
{
    F12::Run(speedCrunch)
}

#HotIf WinExist(exe speedCrunch)
{
    F12::WinActivate(exe speedCrunch)
}