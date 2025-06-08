#Requires AutoHotkey v2.0
#Include Utils.ahk


Class Remppaing {

    
    AshForest(isElite){
    ; Remaps to Map
    GoToMap()
    Utils.RandomSleep(250, 300)
    if (isElite){
        MouseClick("left", 1768, 982) ; clicks elite
        Utils.RandomSleep(250, 300)
    }
    MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
    MouseClick("left", 1663, 202) ; clicks on elder woods
    Utils.RandomSleep(250, 300)
    MouseClick("left", 599, 433) ; Clicks on ash forest
    Utils.RandomSleep(250, 300)
    MouseClick("left", 1182, 902)
   
    }

    BlueAbyss(isElite){
        MouseClick("left", 187, 67)  ; Clicks avatar for main menu
        Utils.RandomSleep(250, 300)
        MouseClick("left", 561, 977)  ; opens map 
        Utils.RandomSleep(250, 300)
        if (isElite){
            MouseClick("left", 1768, 982) ; clicks elite
            Utils.RandomSleep(250, 300)
        }
        MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
        MouseClick("left", 1663, 202) ; clicks on elder woods
        Utils.RandomSleep(250, 300)
        MouseClick("left", 614, 655) ;
        Utils.RandomSleep(250, 300)
        MouseClick("left", 1182, 902)
    }

    Hedo(isElite){
        ; Remaps to Map
        MouseClick("left", 187, 67)  ; Clicks the avatar
        Utils.RandomSleep(250, 300)
        MouseClick("left", 561, 977)  ; Opens the map
        Utils.RandomSleep(250, 300)
        if (isElite){
        MouseClick("left", 1768, 982) ; turns game to elite
            Utils.RandomSleep(250, 300)
        }
        MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
        MouseClick("left", 1500, 327)
        Utils.RandomSleep(250, 300)
        MouseClick("left", 965, 814)
    }

    Indigo(isElite){
        ; Remaps to Map
        MouseClick("left", 187, 67)  ; Clicks avatar for main menu
        Utils.RandomSleep(250, 300)
        MouseClick("left", 561, 977)  ; opens map 
        Utils.RandomSleep(250, 300)
        if (isElite){
        MouseClick("left", 1768, 982) ; clicks elite
            Utils.RandomSleep(250, 300)
        }
        MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
        MouseClick("left", 1663, 202) ; clicks on elder woods
        Utils.RandomSleep(250, 300)
        MouseClick("left", 586, 551) ;
        Utils.RandomSleep(250, 300)
        MouseClick("left", 1182, 902)
    }

    GoToMap(direction){
        left := "left"
        right := "right"
        ToolTip("Use " . left . "or " . right)
        MouseClick("left", 187, 67)  ; Clicks avatar for main menu
        Utils.RandomSleep(175, 250)
        MouseClick("left", 561, 977)  ; opens map 
        Utils.RandomSleep(175, 250)
        if direction = "left"
        {
            MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
        }
        
        if direction = "right"
        {
            MouseClickDrag("left", 70, 496, 1827, 524, 10) ; scroll to right side of map
        }
    }

}