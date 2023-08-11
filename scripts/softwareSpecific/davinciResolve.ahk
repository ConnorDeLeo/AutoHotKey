#Requires AutoHotkey v2.0

exe := "ahk_exe "

; DaVinci Resolve
; Davinci Resolve path: "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

davinci := "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

#HotIf WinActive(exe davinci)
{
    LAlt & c::cut("LWin & c")

    cut(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(670, 970) MouseClick("left") MouseMove(80, 530) MouseClick("left") MouseMove(670, 970) MouseClick("left") MouseMove(xpos, ypos)
    }
}

#HotIf Not WinExist(exe davinci)
{
    LWin & d::Run(davinci)
}

#HotIf WinExist(exe davinci)
{
    LWin & d::WinActivate(exe davinci)
}