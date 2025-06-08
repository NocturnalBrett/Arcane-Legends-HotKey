F1:: ; Press F1 to trigger the click
{
    ; Remaps to Map
    MouseClick("left", 187, 67)  ; Clicks avatar for main menu
    Sleep(200)
    MouseClick("left", 561, 977)  ; opens map 
    Sleep(200)
    MouseClick("left", 1768, 982) ; clicks elite
    Sleep(200)
    MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
    MouseClick("left", 1663, 202) ; clicks on elder woods
    Sleep(200)
    MouseClick("left", 599, 433) ; Clicks on ash forest
    Sleep(200)
    MouseClick("left", 1182, 902)
}

F2::ExitApp

