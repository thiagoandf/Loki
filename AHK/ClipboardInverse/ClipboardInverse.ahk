#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetBatchLines -1 ;For Speed

;Reverses the ClipBoard
reversePercent = 12

Return    ;End of Auto Execute Section

OnClipboardChange:

If (A_EventInfo = 1) ; IsText
{
  Random, Test, 1, 100
  if(test <= reversePercent)
  {
    temp =
    i := StrLen(Clipboard)

    Loop %i%
      temp := temp SubStr(Clipboard, i - A_index + 1, 1)

    Clipboard := temp
    temp =
  }
}

Return

; Press C + I to Exit
c & i::Exitapp