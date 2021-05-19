#NoEnv
SendMode Input
SetWorkingDir %A_scriptDIR%

;========================================================================================

;Remap some buttons
Capslock::Esc
RAlt::Alt

;========================================================================================

;Create a profile
Profile := 1 ;default
F1::Profile := 1
;ToolTip, "Normal Mode"
;SetTimer, RemoveToolTip, -1000

;reminder to make tooltips work

F2::Profile := 2
;ToolTip, "Funky Mode"
;SetTimer, RemoveToolTip, -1000

#If Profile = 1
;normalmode so don't change anything

#If Profile = 2
Space::Click
h::Left
j::Down
k::Up
l::Right
;w::mouseup
;a::mouseleft
;s::mousedown
;d::mouseright

RemoveToolTip:
ToolTip
return

;========================================================================================

;Use Numpad to launch applications
Numpad1::
Run, notepad.exe
return

;========================================================================================

#y::
Send ^t
sleep 7
Send youtube.com{Enter}
return

#t::
Send ^t
sleep 7
Send twitter.com{Enter}
return

#d::
Send ^t
sleep 7
Send discord.com/app{Enter}
return

#b::
Run Chrome

;========================================================================================

;Handy hotstrings go here
:*:cdt::
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt
SendInput %CurrentDateTime%
return
