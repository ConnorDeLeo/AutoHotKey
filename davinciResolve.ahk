#Requires AutoHotkey v2.0

; DaVinci Resolve
; Davinci Resolve path: "ahk_exe C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

davinci := "ahk_exe C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

#HotIf Not WinExist(davinci)
{
    LWin & d::Run(LTrim(davinci, exe))
}

#HotIf WinExist(davinci)
{
    LWin & d::WinActivate(davinci)
}