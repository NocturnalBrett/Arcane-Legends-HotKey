#Requires AutoHotkey v2.0

class Utils {

    static RandomSleep(min, max){
        Sleep(Random(min, max))
    }

    static RandomClick(x, y, variance := 28){
        randomX := x + Random(-variance, variance)
        randomY := y + Random(-variance, variance)
        MouseClick("left", randomX, randomY)
    }
}