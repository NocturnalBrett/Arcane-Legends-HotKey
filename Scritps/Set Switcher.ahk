#Requires AutoHotkey v2.0

F3:: ; Boss set
{
    MouseClick("left", 1488, 547)  ; Click Boss loadout
    Sleep(20)
    MouseClick("left", 1489, 461)  ; Click arc reppy

    MsgBox("hey")
}

F4:: ; Press F2 to trigger the click
{
    MouseClick("left", 1577, 547)  ; Click speed load
    Sleep(20)
    MouseClick("left", 1596, 452)  ; CLick hero lupe
    MsgBox("hey")
}

F6::
{
    MouseClick("left", 1669, 528)  ; Click Damage load
    Sleep(20)
    MouseClick("left", 1663, 461)  ; CLick ark reppu
    MsgBox("hey")
}

F5::ExitApp
