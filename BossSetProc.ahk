#Requires AutoHotkey v2.0


F3::
{
    RandomClick(1665, 550)  ; Clicks bottom 3rd hotbar
    ;RandomSleep(30, 40)
    ;RandomClick(1665, 460)  ; CLick ark reppu
}


F4:: ; Press F2 to trigger the click
{
    RandomClick(1576, 550)  ; Click bottom 2nd hotbar
    RandomSleep(30, 40)
    ;RandomClick(1576, 460)  ; CLick top 2nd hotbar
}

F5:: ; Boss set
{

    RandomClick(1488, 547)  ; Click bottom 1st hotbar
    RandomSleep(30, 40)
    ;RandomClick(1489, 461)  ; Click top 1st hotbar

    MouseMove(1852, 980)
    RandomSleep(150, 200)
    Send("{LButton Down}")
    
    RandomSleep(1500, 1700)
    Send("{LButton Up}")
    ;RandomSleep(1400, 1800)
    
    ;RandomClick(1663, 550)  ; Click Damage load
    ;RandomSleep(30, 50)
    ;RandomClick(1663, 461)  ; CLick ark reppu
}

F6:: ; Gold loot
{
    RandomClick(1755, 550)  ; bottom 4th hotbar
    ;RandomSleep(30, 40)
    ;RandomClick(1755, 460)  ; top 4th hotbar
}

RandomSleep(min, max)
{
    Sleep(Random(min, max))
}

RandomClick(x, y, variance := 28)
{
    randomX := x + Random(-variance, variance)
    randomY := y + Random(-variance, variance)
    MouseClick("left", randomX, randomY)
}
