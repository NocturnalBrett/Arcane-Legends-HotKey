#Requires AutoHotkey v2.0

currentKey := 1

WheelUp::
{
    global currentKey
    if currentKey < 8
        currentKey += 1
    SendText currentKey
}

WheelDown::
{
    global currentKey
    if currentKey > 1
        currentKey -= 1
    SendText currentKey
}
