#Requires AutoHotkey v2.0

; Variables

exe := "ahk_exe "

; Remaps

LWin::LAlt
LAlt::LWin

; General Programs 

#HotIf

; Bend-Tech
; Bend-Tech path: "ahk_exe C:\2020SSI\Bend-Tech 7x\Bend-Tech.exe"

bendTech := "ahk_exe C:\2020SSI\Bend-Tech 7x\Bend-Tech.exe"

#HotIf WinActive(bendTech)
{
    ^+s::saveAs("^+s")
    ^+z::redo("^+z")
    l::straight("l")
    b::bent("b")
    Delete::delete("Delete")
    d::dimension("d")

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

#HotIf Not WinExist(bendTech)
{
    LAlt & b::Run(LTrim(bendTech, exe))
}

#HotIf WinExist(bendTech)
{
    LAlt & b::WinActivate(bendTech)
}

; DaVinci Resolve
; Davinci Resolve path: "ahk_exe C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

davinci := "ahk_exe C:\Program Files\Blackmagic Design\DaVinci Resolve\Resolve.exe"

#HotIf Not WinExist(davinci)
{
    LAlt & d::Run(LTrim(davinci, exe))
}

#HotIf WinExist(davinci)
{
    LAlt & d::WinActivate(davinci)
}