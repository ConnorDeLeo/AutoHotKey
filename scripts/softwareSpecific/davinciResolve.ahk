#Requires AutoHotkey v2.0

exe := "ahk_exe "

; DaVinci Resolve
; Davinci Resolve path: "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

davinci := "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

#HotIf Not WinExist(exe davinci)
{
    LWin & d::Run(davinci)
}

#HotIf WinExist(exe davinci)
{
    LWin & d::WinActivate(exe davinci)
}