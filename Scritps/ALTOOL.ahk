; AutoHotkey v2 Map Selection Menu Template
; Press M to open menu, select map and difficulty, then press F1 to execute actions

#Include Remapping.ahk
#Include Utils.ahk
; Global variables
selectedMap := ""
selectedDifficulty := ""
menuGui := ""

; Available maps - add your maps here
mapList := ["Ash Forest", "Indigo", "Blue Abyss", "Hedo", "Sanctuary of Secrets", "Relog"]

; Difficulty options
difficultyList := ["Normal", "Elite"]

; Create the main menu GUI
CreateMenu() {
    global
    
    ; Destroy existing GUI if it exists
    if (menuGui != "") {
        try menuGui.Destroy()
    }
    
    ; Create new GUI
    menuGui := Gui("+Resize +MinSize300x200", "Map Selection Menu")
    menuGui.BackColor := "White"
    
    ; Map selection section
    menuGui.Add("Text", "x10 y10 w100 h20", "Select Map:")
    
    ; Create map buttons
    mapButtons := []
    Loop mapList.Length {
        currentIndex := A_Index
        currentMap := mapList[currentIndex]
        yPos := 35 + (currentIndex - 1) * 30
        btn := menuGui.Add("Button", "x10 y" . yPos . " w150 h25", currentMap)
        btn.mapName := currentMap  ; Store the map name as a property of the button
        btn.OnEvent("Click", MapButtonClick)
        mapButtons.Push(btn)
    }
    
    ; Difficulty selection section
    menuGui.Add("Text", "x180 y10 w100 h20", "Select Difficulty:")
    
    ; Create difficulty buttons
    difficultyButtons := []
    Loop difficultyList.Length {
        currentIndex := A_Index
        currentDifficulty := difficultyList[currentIndex]
        yPos := 35 + (currentIndex - 1) * 30
        btn := menuGui.Add("Button", "x180 y" . yPos . " w100 h25", currentDifficulty)
        btn.difficultyName := currentDifficulty  ; Store the difficulty name as a property
        btn.OnEvent("Click", DifficultyButtonClick)
        difficultyButtons.Push(btn)
    }
    
    ; Status display
    statusText := menuGui.Add("Text", "x10 y220 w270 h40 Center", "Select a map and difficulty, then press F1")
    statusText.SetFont("s10")
    
    ; Reset button
    resetBtn := menuGui.Add("Button", "x10 y240 w100 h25", "Reset Selection")
    resetBtn.OnEvent("Click", (*) => ResetSelections())
    
    ; Instructions
    menuGui.Add("Text", "x10 y270 w270 h40 Center", "Press ctrl + F1 to toggle menu | Press F1 to execute`nPress ctrl + F2 to exit app")
    
    ; Store references for later use
    menuGui.mapButtons := mapButtons
    menuGui.difficultyButtons := difficultyButtons
    menuGui.statusText := statusText
    
    ; Show the GUI (increased height to accommodate 5 maps)
    menuGui.Show("w300 h320")
    
    ; Update status display
    UpdateStatus()
}

; Function to reset all selections
ResetSelections() {
    global selectedMap, selectedDifficulty, menuGui
    
    ; Clear selections
    selectedMap := ""
    selectedDifficulty := ""
    
    ; Reset all map buttons to enabled state
    for btn in menuGui.mapButtons {
        btn.Enabled := true
    }
    
    ; Reset all difficulty buttons to enabled state  
    for btn in menuGui.difficultyButtons {
        btn.Enabled := true
    }
    
    ; Update status display
    UpdateStatus()
}

; Event handler for map button clicks
MapButtonClick(buttonObj, *) {
    SelectMap(buttonObj.mapName, buttonObj)
}

; Event handler for difficulty button clicks  
DifficultyButtonClick(buttonObj, *) {
    SelectDifficulty(buttonObj.difficultyName, buttonObj)
}

; Function to handle map selection
SelectMap(mapName, buttonObj) {
    global selectedMap, menuGui
    
    ; Reset all map buttons to enabled state
    for btn in menuGui.mapButtons {
        btn.Enabled := true
    }
    
    ; Set selected map and disable the selected button
    selectedMap := mapName
    buttonObj.Enabled := false
    
    UpdateStatus()
}

; Function to handle difficulty selection
SelectDifficulty(difficulty, clickedButton) {
    global selectedDifficulty, menuGui
    
    ; Reset ALL difficulty buttons to enabled state
    for btn in menuGui.difficultyButtons {
        btn.Enabled := true
    }
    
    ; Set the clicked button as selected and disabled
    selectedDifficulty := difficulty
    clickedButton.Enabled := false
    
    UpdateStatus()
}

; Update the status display
UpdateStatus() {
    global selectedMap, selectedDifficulty, menuGui
    
    if (selectedMap == "" && selectedDifficulty == "") {
        statusText := "Select a map and difficulty"
    } else if (selectedMap == "") {
        statusText := "Map: [Not Selected]`nDifficulty: " . selectedDifficulty
    } else if (selectedDifficulty == "") {
        statusText := "Map: " . selectedMap . "`nDifficulty: [Not Selected]"
    } else {
        statusText := "Map: " . selectedMap . "`nDifficulty: " . selectedDifficulty . "`n`nReady! Press F1 to execute"
    }
    
    if (menuGui != "" && menuGui.statusText != "") {
        menuGui.statusText.Text := statusText
    }
}

; Hotkey: M - Toggle menu visibility
^F1::
{
    global menuGui
    
    if (menuGui == "") {
        CreateMenu()
    } else {
        try {
            ; Check if GUI exists and is visible
            if (menuGui.Hwnd) {
                ; If GUI exists, bring it to front and center it
                menuGui.Show()
                WinActivate(menuGui.Hwnd)
            } else {
                CreateMenu()
            }
        } catch {
            CreateMenu()
        }
    }
}

; Hotkey: F1 - Execute actions based on selections
F1::
{
    global selectedMap, selectedDifficulty
    
    if (selectedMap = "Relog"){
        ExecuteMapActions(selectedMap, selectedDifficulty)
        return
    }

    ; Check if both map and difficulty are selected
    if (selectedMap == "" || selectedDifficulty == "") {
        MsgBox("Please select both a map and difficulty before pressing F1!", "Selection Required", 48)
        return
    }
    
    ; Hide the menu while executing
    if (menuGui != "") {
        try menuGui.Hide()
    }
    
    ; Execute actions based on selections
    ExecuteMapActions(selectedMap, selectedDifficulty)
}

; Main execution function - customize this with your specific actions
ExecuteMapActions(mapName, difficulty := false) {
    
    switch mapName {
        case "Ash Forest":
            if (difficulty == "Normal") {
                Remapping.AshForest(false)
            } else if (difficulty == "Elite") {
                Remapping.AshForest(true)
            }
            
        case "Indigo":
            if (difficulty == "Normal") {
                Remapping.Indigo(false)
            } else if (difficulty == "Elite") {
                Remapping.Indigo(true)
            }
            
        case "Blue Abyss":
            if (difficulty == "Normal") {
                Remapping.BlueAbyss(false)
            } else if (difficulty == "Elite") {
                Remapping.BlueAbyss(true)
            }
            
        case "Hedo":
            if (difficulty == "Normal") {
                Remapping.Hedo(false)
            } else if (difficulty == "Elite") {
                Remapping.Hedo(true)
            }
            
        case "Sanctuary of Secrets":
            if (difficulty == "Normal") {
                Remapping.SanctuaryOfSecrets(false)
            } else if (difficulty == "Elite") {
                Remapping.SanctuaryOfSecrets(true)
            }
        case "Relog":
            Remapping.Relog()
            
        default:
            MsgBox("Unknown map: " . mapName, "Error", 16)
    }
    
}

; Hotkey: F2 - Exit the application
^F2::ExitApp


RandomSleep(min, max){
    Sleep(Random(min, max))
}


; Initialize the script
CreateMenu()