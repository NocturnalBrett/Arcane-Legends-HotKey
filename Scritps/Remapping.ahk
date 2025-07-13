#Requires AutoHotkey v2.0
#Include Utils.ahk


Class Remapping {
    
    Static AshForest(isElite){
    ; Remaps to Map
    this.GoToMap("left")
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

    Static BlueAbyss(isElite){
        this.GoToMap("right")
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

    Static Hedo(isElite){
        this.GoToMap("right")
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

    Static Indigo(isElite){
        ; Remaps to Map
        this.GoToMap("right")
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

    Static SanctuaryOfSecrets(isElite){
        ; Remaps to Map
        this.GoToMap("right")
        Utils.RandomSleep(250, 300)
        if (isElite){
        MouseClick("left", 1768, 982) ; clicks elite
            Utils.RandomSleep(250, 300)
        }
        MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
        MouseClick("left", 791, 740) ; clicks on elder woods
        Utils.RandomSleep(250, 300)
        ; CLick sanctuary of sectrest
        MouseClick("left", 600, 650) ;
        Utils.RandomSleep(250, 300)
        MouseClick("left", 1182, 902)
    }

    Static Relog(){
        playColor := 0xFDF9DB
        maxWaitTime := 3000

        ; Exits to lobby
        Send("{Escape}")
        Utils.RandomSleep(350, 500)

        ; Quit to menu
        MouseClick("left", 194, 1024)
        Utils.RandomSleep(200, 500)

        startTime := A_TickCount
        Loop{
            ; Breaks if wait time is exceeded
            if (startTime - A_TickCount >= maxWaitTime) {
            break
            }

            if (playColor = PixelGetColor(1734, 556)){
                ; Clicks play
                MouseClick("left", 1734, 556)
                break
            }
        }
        
    }

    Static GoToMap(direction){
        left := "left"
        right := "right"
        MouseClick("left", 187, 67)  ; Clicks avatar for main menu
        Utils.RandomSleep(250, 300)
        MouseClick("left", 561, 977)  ; opens map 
        Utils.RandomSleep(250, 300)
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