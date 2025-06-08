#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force  ; Ensures only one instance of this script is running.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Global variable to track current hotbar slot (starting at 1)
global currentSlot := 1
global maxSlots := 8  ; Your hotbar has 8 slots

; Mouse wheel up - move to previous slot
WheelUp::
    currentSlot := (currentSlot - 1)
    if (currentSlot < 1)
        currentSlot := maxSlots  ; Wrap around to the last slot
    
    ; Send the corresponding number key (1-8)
    Send % currentSlot
    return

; Mouse wheel down - move to next slot
WheelDown::
    currentSlot := (currentSlot + 1)
    if (currentSlot > maxSlots)
        currentSlot := 1  ; Wrap around to the first slot
    
    ; Send the corresponding number key (1-8)
    Send % currentSlot
    return