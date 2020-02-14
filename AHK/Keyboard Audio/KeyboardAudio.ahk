#SingleInstance, Force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; #KeyHistory
; SetBatchLines, -1
; ListLines

Global fileList := []

Menu, Tray, Tip, Windows Hotkey Policy Update	;on hover of the tray icon, it shows this to trick the user into thinking it's a Windows thing
Menu, Tray, Icon , Shell32.dll, 2, 1	;location of the the tray icon's icon

Loop, Files, %A_ScriptDir%\*.mp3, F
    fileList.Push(A_LoopFileName)

; Function for playing a specific audio file
PlaySpecific(key)
{
    SoundSet, 100
    path := A_ScriptDir "\special\" key ".mp3"
    SoundPlay, %path%
}

; Function for playing a random audio file based on .mp3 files in script dir
PlayRandom()
{
    SoundSet, 100
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
    if (rand < 10) {
        ; Has a 2% chance of playing gemidão
        PlaySpecific("G")
    } else {
        PlayRandom()
    }
    if (rand > 250) {
        MoveMouse()
    }
}

; Press K + A to Exit
k & a::Exitapp

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