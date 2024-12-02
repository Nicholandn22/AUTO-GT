#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#SingleInstance, Force
DetectHiddenWindows, On
Gui, +AlwaysONTop

;================================================================
;SPAMMER
;================================================================
Gui, Add, Button, x10 y10 w100 h30 gSelect_Window, Select Window
Gui, Font, s12
Gui, Add, Edit, x+10 vWindow,
;================================================================
Gui, Font, s12
Gui, Add, Edit, r2 x10 y+10 vText1 gUpdate1 w230 Limit120,

Gui, Font, s15
Gui, Add, Text, x+10 y60 vCount1, 0`/120
Gui, Font, s12
Gui, Add, Text, x10, Delay
Gui, Add, Edit, x+10 vDelay1 gUpdate, 5000
;================================================================
Gui, Font, s12
Gui, Add, Edit, r2 x10 y+10 vText2 gUpdate2 w230 Limit120,

Gui, Font, s15
Gui, Add, Text, x+10 y150 vCount2, 0`/120
Gui, Font, s12
Gui, Add, Text, x10, Delay
Gui, Add, Edit, x+10 vDelay2 gUpdate, 3000
;================================================================

Gui, Add, Button, x10 y+10 w140 h30 gStart, Start
Gui, Add, Button, x+10 w140 h30 gStop, Stop
Gui, Add, Button, x10 y+10 w90 h30 gHide_Window,Hide
Gui, Add, Button, x+10 w90 h30 gShow_Window,Show
Gui, Add, Button, x+10 w90 h30 gReload,Reload

;================================================================

Gui, Show, x0 y0, SpammerGT
return

Start:
    Mulai := 1
    While (Mulai == 1)
    {
        ControlSend,, {enter}, Ahk_Pid %window%
        ControlSend,, %Text1%, Ahk_Pid %window%
        ControlSend,, {enter}, Ahk_Pid %window%
        Sleep, %delay1%
        ControlSend,, {enter}, Ahk_Pid %window%
        ControlSend,, %Text2%, Ahk_Pid %window%
        ControlSend,, {enter}, Ahk_Pid %window%
        Sleep, %delay2%
    }
return

Stop:
    Mulai := 0
return

Select_Window:
    Gui, Submit, NoHide
    Target_window := Set(Window)
    GuiControl,, Window, % Target_window
return

Set(Window)
{
    i := 0
    k := 0
    Loop
    {
        klik := GetKeyState("LButton")
        tooltip, Klik 2 kali pada DetectHiddenWindows
        if (klik == false && k == 0)
            k := 1
        else if (klik == true && k==1)
        {
            i++, k:=0
            if (i>=2)
            {
                WinGet, Target_window, PID, A
                tooltip,
                break
            }
        }
    }
return Target_window
}

Update:
    Gui, Submit, NoHide
return

Update1:
    Gui, Submit, NoHide
    GuiControlGet, String,, Text1
    Hitung := strlen(String)
    GuiControl,, Count1, %hitung%/120
return

Update2:
    Gui, Submit, NoHide
    GuiControlGet, String,, Text2
    Hitung := strlen(String)
    GuiControl,, Count2, %hitung%/120
return

Hide_Window:
    WinHide, Ahk_Pid %Window1%
Return

Show_Window:
    WinShow, Ahk_Pid %Window1%
Return

GuiClose:
ExitApp
return

Reload:
    reload
return
