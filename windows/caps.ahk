#NoEnv
SendMode Input
SetWorkingDir %A_scriptDIR%

;========================================================================================

;Remap some buttons
Capslock::Esc
RAlt::Alt

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

;========================================================================================

;Create a profile
Profile := 1 ;default

F1::
Profile := 1
TrayTip, Mode:, Normal Mode
SetTimer, HideTrayTip, -1000 ;make the tooltip go away after 1 second
return

F2::Profile := 2
TrayTip, Mode:, No Arrow Mode
SetTimer, HideTrayTip, -1000 ;make the tooltip go away after 1 second
return

F3::Profile := 3
TrayTip, Mode:, Mouse Mode
SetTimer, HideTrayTip, -1000 ;make the tooltip go away after 1 second
return

F4::Profile := 4
TrayTip, Mode:, Vim Mode
SetTimer, HideTrayTip, -1000 ;make the tooltip go away after 1 second
return

F5::
TrayTip, Mode:, % (Profile=1 ? "Normal Mode" : Profile=2 ? "No Arrow mode" : Profile=3 ? "Mouse mode" : Profile=4 ? "Vim mode")
SetTimer, HideTrayTip, -1000 ;make the tooltip go away after 1 second
return

;========================================================================================

;Small function to make the tooltip go away
;Won't work if you have all notifications turned off
HideTrayTip(){
        TrayTip
}

;========================================================================================

#If Profile = 1
return

;========================================================================================

#If Profile = 2
Left::return
+Left::return
^Left::return
Down::return
+Down::return
^Down::return
Up::return
+Up::return
^Up::return
Right::return
+Right::return
^Right::return

;========================================================================================

#If Profile = 3
Space::LButton
f::RButton
w::MouseMove, 0, -10, 80, R
a::MouseMove, -10, 0, 80, R
s::MouseMove, 0, 10, 80, R
d::MouseMove, 10, 0, 80, R

k::MouseMove, 0, -50, 80, R
h::MouseMove, -50, 0, 80, R
j::MouseMove, 0, 50, 80, R
l::MouseMove, 50, 0, 80, R

;========================================================================================

#If Profile = 4
h::Left
j::Down
k::Up
l::Right
Space::LButton

o::
Send, ^t
Profile := 1
return

d::
Send, ^w
Profile := 1
return

y::
Send, ^c
return

p::
Send, ^v
Profile := 1
return

