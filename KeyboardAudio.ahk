#SingleInstance, Force
; #KeyHistory
; SetBatchLines, -1
; ListLines
; SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
; SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
; SetWorkingDir, %A_ScriptDir%
; SplitPath, A_ScriptName, , , , thisscriptname
; #MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag


Global fileList := []

Loop, Files, %A_ScriptDir%\*.mp3, F
    fileList.Push(A_LoopFileName)

; Function for playing a specific audio file
PlaySpecific(key)
{
    path := A_ScriptDir "\" key ".mp3"
    SoundPlay, %path%
}

; Function for playing a random audio file based on .mp3 files in script dir
PlayRandom()
{
    len := fileList.Length()
    min := fileList.MinIndex()
    random, rand2, %min%, %len%
    path := A_ScriptDir "\" fileList[rand2]
    SoundPlay, %path%
}

; Function to move the mouse at random acording to the main monitor working area
MoveMouse() {
    SysGet, m, MonitorWorkArea
    random, x, 0, %mRight%
    random, y, 0, %mBottom%
    random, speed, 0, 50
    MouseMove, %x%, %y%, %speed%
}

; Used to regulate the chances of anything happening
RandomHandler() {
    random, rand, 0, 500
    PlayRandom()
    if (rand > 250) {
        MoveMouse()
    }
}

~a::PlaySpecific("A")
~b::RandomHandler()
~c::RandomHandler()
~d::RandomHandler()
~e::RandomHandler()
~f::RandomHandler()
~g::RandomHandler()
~h::RandomHandler()
~i::RandomHandler()
~j::RandomHandler()
~k::RandomHandler()
~l::RandomHandler()
~m::RandomHandler()
~n::RandomHandler()
~o::RandomHandler()
~p::RandomHandler()
~q::RandomHandler()
~r::RandomHandler()
~s::RandomHandler()
~t::RandomHandler()
~u::RandomHandler()
~v::RandomHandler()
~w::RandomHandler()
~x::RandomHandler()
~y::RandomHandler()
~z::RandomHandler()