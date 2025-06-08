F1:: ; Press F1 to trigger the click
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
    MouseClick("left", 613, 660)
    Sleep(200)
    MouseClick("left", 1182, 902)
}

F2::ExitApp
