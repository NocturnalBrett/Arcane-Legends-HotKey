#Requires AutoHotkey v2.0
F1::
{
    ; Remaps to Map
    MouseClick("left", 187, 67)  ; Clicks at X=500, Y=500 coordinates
    Sleep(200)
    MouseClick("left", 561, 977)  ; Clicks at X=500, Y=500 coordinates
    Sleep(200)
    MouseClick("left", 1768, 982)
    Sleep(200)
    MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
    MouseClick("left", 272, 906)
    Sleep(200)
    MouseClick("left", 603, 772) ; Clicks on Skull cove
    Sleep(200)
    MouseClick("left", 1182, 902) ; Clicks Go
}

F2::ExitApp
