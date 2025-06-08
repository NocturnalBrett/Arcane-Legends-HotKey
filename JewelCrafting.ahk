#Requires AutoHotkey v2.0

J:: ; jewel craft
{
    CraftJewels()
}

CraftJewels()
{
    _MouseClick(967, 995) ; clicks complete
    RandomSleep(150, 250)

    _MouseClick(633, 293) ; clicks craft button
    RandomSleep(150, 250)

    _MouseClick(1254, 340) ; clicks clicks jewel
    RandomSleep(150, 250)

    _MouseClick(1781, 1011) ; clicks Select
    RandomSleep(150, 250)

    _MouseClick(1667, 1008) ; clicks craft all
    RandomSleep(150, 250)

    Sleep(5700)

    CraftJewels()
}


K::ExitApp

RandomSleep(min, max)
{
    Sleep(Random(min, max))
}

_MouseClick(x, y)
{
    MouseClick("left", x, y)
}