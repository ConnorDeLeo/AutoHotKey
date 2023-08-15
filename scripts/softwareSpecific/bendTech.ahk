#Requires AutoHotkey v2.0

exe := "ahk_exe "

; Bend-Tech
; Bend-Tech path: "C:\2020SSI\Bend-Tech 7x\Bend-Tech.exe"

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
    LWin & b::Run(bendTech)
}

#HotIf WinExist(exe bendTech)
{
    LWin & b::WinActivate(exe bendTech)
}