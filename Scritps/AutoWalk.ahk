; AutoHotkey v2 script to toggle W key hold with F1
; Press F1 once to start holding W, press F1 again to release W

; Variable to track if W is being held
WKeyHeld := false

F1:: {
    global WKeyHeld
    if (WKeyHeld) {
        ; If W is currently being held, release it
        Send("{w up}")
        WKeyHeld := false
        ToolTip("W key released")
        SetTimer(RemoveToolTip, -1000)
    } else {
        ; If W is not being held, start holding it
        Send("{w down}")
        WKeyHeld := true
        ToolTip("W key held down")
        SetTimer(RemoveToolTip, -1000)
    }
}

; Function to remove the tooltip after 1 second
RemoveToolTip() {
    ToolTip()
}

; Optional: ESC key to emergency release W and exit script
F2:: {
    global WKeyHeld
    if (WKeyHeld) {
        Send("{w up}")
        WKeyHeld := false
    }
    ExitApp()
}