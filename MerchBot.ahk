#Requires AutoHotkey v2.0

F9::
{
    BeryllineBay()
    SendLastChat()
    CheckForRemap()
    

    ParadisePier()
    SendLastChat()
    CheckForRemap()
    

    ExpeditionCamp()
    SendLastChat()
    CheckForRemap()
    

    TravelersOutpost()
    SendLastChat()
    CheckForRemap()
    

    FesterFang()
    SendLastChat()
    CheckForRemap()

    



}


CheckForRemap()
{
    healthColor := 0x2CBE36
    manaColor := 0x3388EE
    maxWaitTime := 600
    
    startTime := A_TickCount

    Loop{
        healthColorTest := PixelGetColor(158, 69) ; healthColor
        if (healthColorTest = healthColor){
            break
        }

        manaColorTest := PixelGetColor(191, 98) ; manacolor

        if (manaColorTest = healthColor){
            break
        }
        
    }

    RandomSleep(1000, 2000)
}

BeryllineBay()
{
    GoToMap("left")
    MouseClick("left", 1500, 324) ; Clicks map
    RandomSleep(175, 258)
    MouseClick("left", 952, 811) ; clicks go
}

ParadisePier()
{
    GoToMap("left")
    MouseClick("left", 155, 800) ; Clicks map
    RandomSleep(175, 258)
    MouseClick("left", 953, 811) ; clicks go

}

ExpeditionCamp()
{
    GoToMap("left")
    MouseClick("left", 520, 632) ; Clicks map
    RandomSleep(175, 258)
    MouseClick("left", 953, 811) ; clicks go

}

TravelersOutpost()
{
    GoToMap("right")
    MouseClick("left", 1255, 490) ; Clicks map
    RandomSleep(175, 258)
    MouseClick("left", 953, 811) ; clicks go
   
}

FesterFang()
{
    GoToMap("right")
    MouseClick("left", 318, 600) ; Clicks map
    RandomSleep(175, 258)
    MouseClick("left", 953, 811) ; clicks go
   
}

Kraag()
{
    GoToMap("right")
    MouseClick("left", 1808, 275) ; Clicks map
    RandomSleep(175, 258)
    MouseClick("left", 953, 811) ; clicks go
 
}



SendLastChat()
{
    RandomSleep(1500, 2000)
    Send("{Enter}")
    RandomSleep(450, 700)
    Send("{Up}")
    RandomSleep(450, 700)
    Send("{Enter}")
    RandomSleep(1500, 2000)
}

RandomSleep(min, max)
{
    Sleep(Random(min, max))
}

GoToMap(direction)
{
    MouseClick("left", 187, 67)  ; Clicks avatar for main menu
    RandomSleep(175, 250)
    MouseClick("left", 561, 977)  ; opens map 
    RandomSleep(175, 250)
    if direction = "left"
    {
        MouseClickDrag("left", 1827, 496, 72, 524, 10) ; scroll to right side of map
    }
    
    if direction = "right"
    {
        MouseClickDrag("left", 70, 496, 1827, 524, 10) ; scroll to right side of map
    }
}