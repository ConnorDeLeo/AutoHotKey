#Requires AutoHotkey v2.0

exe := "ahk_exe"

cmd := "C:\Windows\system32\cmd.exe"

; File Explorer
; File Explorer path: "D:\"

fileX := "New Volume (D:)"
fileXArg := "Explorer D:\"

#HotIf Not WinExist(fileX)
{
    LWin & f::RunWait(cmd fileXArg)
}

#HotIf WinExist(fileX)
{
    LWin & f::WinActivate(fileX)
}