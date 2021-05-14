Capslock::Esc

^y::
Send youtube.com{Enter}
return

::yo::Hello

::how::
MsgBox You have typed the forbidden word
return

:*:currentdatetime::
FormatTime, CurrentDateTime,, M/d/yyyy h:mm tt
SendInput %CurrentDateTime%
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

#^t::
Send ^t
sleep 7
Send tumblr.com/blog/iain-games-fmp{Enter}
return

#v::
Run D:\Vim\vim82\gvim.exe
return

#r::
Run D:\Unreal\FMP\README.md
return

#b::
Run Chrome
