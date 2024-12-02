#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#SingleInstance, force
DetectHiddenWindows, On
Gui, +AlwaysOnTop

Gui, Add, Button, x10 y10 w100 h30 gSelect_Window, Select Window
Gui, Font, s12
Gui, Add, Edit, x+10 h30 vWindow

Gui, Add, Text, x10 y+10, ================================

Gui, Add, Button, x10 y+10 w50 h30 gSelect_Klik1, Klik 1
Gui, Font, s12
Gui, Add, Edit, x+10 vKlik1

Gui, Add, Button, x10 y+10 w50 h30 gSelect_Klik2, Klik 2
Gui, Font, s12
Gui, Add, Edit, x+10 vKlik2

Gui, Add, Button, x10 y+10 w50 h30 gSelect_Klik3, Klik 3
Gui, Font, s12
Gui, Add, Edit, x+10 vKlik3

Gui, Show, x0 y0, SpammerGT
return

Select_Window:
return
Select_Klik1:
return
Select_Klik2:
return
Select_Klik3:
return
