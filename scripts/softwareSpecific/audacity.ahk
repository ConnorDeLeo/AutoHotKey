﻿#Requires AutoHotkey v2.0

exe := "ahk_exe "

; Audacity
; Audacity path: "C:\Program Files\Audacity\Audacity.exe"

audacity := "C:\Program Files\Audacity\Audacity.exe"

#HotIf WinActive(exe audacity)
{
    LWin & n::openAI("LWin & n")

    openAI(key)
    {
        Run("https://audo.ai/noise-removal")
    }
}

#HotIf not WinExist(exe audacity)
{
    LWin & a::Run(audacity)
}

#HotIf WinExist(exe audacity)
{
    LWin & a::WinActivate(exe audacity)
}