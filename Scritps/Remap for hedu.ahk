#Requires AutoHotkey v2.0

F1:: ; Press F1 to trigger the click
{
    ; Remaps to Map
    MouseClick("left", 187, 67)  ; Clicks the avatar
    Sleep(200)
    MouseClick("left", 561, 977)  ; Opens the map
    Sleep(200)
    ; MouseClick("left", 1768, 982) ; turns game to elite
    ; Sleep(200)
    MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
    MouseClick("left", 1500, 327)
    Sleep(200)
    MouseClick("left", 965, 814)
}

F2::ExitApp
