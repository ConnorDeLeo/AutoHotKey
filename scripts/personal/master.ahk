#Requires AutoHotkey v2.0

; Variables

exe := "ahk_exe "

cmd := "C:\Windows\system32\cmd.exe /c"

; Remaps

LWin::LAlt
LAlt::LWin

; General Programs 

#HotIf

; Bend-Tech
; Bend-Tech path: "ahk_exe C:\2020SSI\Bend-Tech 7x\Bend-Tech.exe"

bendTech := "C:\2020SSI\Bend-Tech 7x\Bend-Tech.exe"

#HotIf WinActive(exe bendTech)
{
    ^+s::saveAs("^+s")
    ^+z::redo("^+z")
    ^l::straight("l")
    ^b::bent("b")
    ^Delete::delete("Delete")
    ^d::dimension("d")

    saveAs(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(50, 5) Sleep(5) MouseClick("left") Sleep(5) MouseMove(50, 185) Sleep(5) MouseClick("left") MouseMove(xpos, ypos)
    }
    
    redo(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(80, 5) Sleep(5) MouseClick("left") Sleep(5) MouseMove(80, 65) Sleep(5) MouseClick("left") MouseMove(xpos, ypos)
    }
    
    straight(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(225, 100) Sleep(5) MouseClick("left") Sleep(5) MouseMove(xpos, ypos)
    }
    
    bent(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(300, 100) Sleep(5) MouseClick("left") Sleep(5) MouseMove(xpos, ypos)
    }
    
    delete(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(350, 100) Sleep(5) MouseClick("left") Sleep(5) MouseMove(xpos, ypos)
    }
    
    dimension(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(225, 130) Sleep(5) MouseClick("left") Sleep(5) MouseMove(50, 200) MouseClick("left") MouseMove(xpos, ypos)
    }
}

#HotIf Not WinExist(exe bendTech)
{
    LAlt & b::Run(bendTech)
}

#HotIf WinExist(exe bendTech)
{
    LAlt & b::WinActivate(exe bendTech)
}

; DaVinci Resolve
; Davinci Resolve path: "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

davinci := "C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

#HotIf WinActive(exe davinci)
{
    ^+c::cut("^+c")

    cut(key)
    {
        MouseGetPos(&xpos, &ypos) MouseMove(670, 950) Sleep(5) MouseClick("left") Sleep(5) MouseMove(85, 530) Sleep(5) MouseClick("left") Sleep(5) MouseMove(670, 950) Sleep(5) MouseClick("left") Sleep(5) MouseMove(xpos, ypos)
    }
}

#HotIf Not WinExist(exe davinci)
{
    LAlt & d::Run(davinci)
}

#HotIf WinExist(exe davinci)
{
    LAlt & d::WinActivate(exe davinci)
}

; SpeedCrunch
; SpeedCrunch path: "C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe"

speedCrunch := "C:\Program Files (x86)\SpeedCrunch\speedcrunch.exe"

#HotIf Not WinExist(exe speedCrunch)
{
    F16::Run(speedCrunch)
}

#HotIf WinExist(exe speedCrunch)
{
    F16::WinActivate(exe speedCrunch)
}

; File Explorer
; File Explorer path: "D:\"

fileX := "New Volume (D:)"
fileXArg := "Explorer D:\"

#HotIf Not WinExist(fileX)
{
    LAlt & f::RunWait(cmd fileXArg)
}

#HotIf WinExist(fileX)
{
    LAlt & f::WinActivate(fileX)
}

; Audacity
; Audacity path: "C:\Program Files\Audacity\Audacity.exe"

audacity := "C:\Program Files\Audacity\Audacity.exe"

#HotIf WinActive(exe audacity)
{
    LAlt & n::openAI("LAlt & n")

    openAI(key)
    {
        Run("https://audo.ai/noise-removal")
    }
}

#HotIf not WinExist(exe audacity)
{
    LAlt & a::Run(audacity)
}

#HotIf WinExist(exe audacity)
{
    LAlt & a::WinActivate(exe audacity)
}
