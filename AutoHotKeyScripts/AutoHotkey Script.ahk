#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Windows
; Close current active window
$Escape::                                               ; Long press (> 0.5 sec) on Esc closes window - but if you change your mind you can keep it pressed for 3 more seconds
    KeyWait, Escape, T0.5                               ; Wait no more than 0.5 sec for key release (also suppress auto-repeat)
    If ErrorLevel                                       ; timeout, so key is still down...
        {
            SoundPlay *64                               ; Play an asterisk (Doesn't work for me though!)
            WinGet, X, ProcessName, A
            SplashTextOn,,150,,`nRelease button to close %x%`n`nKeep pressing it to NOT close window...
            KeyWait, Escape, T3                         ; Wait no more than 3 more sec for key to be released
            SplashTextOff
            If !ErrorLevel                              ; No timeout, so key was released
                {
                    PostMessage, 0x112, 0xF060,,, A     ; ...so close window      
                    Return
                }
                                                        ; Otherwise,                
            SoundPlay *64
            KeyWait, Escape                             ; Wait for button to be released
                                                        ; Then do nothing...            
            Return
        }
        Send {Esc}
Return


~!Tab::
KeyWait, Alt
KeyWait, Tab
Sleep 100
WinGetPos, X, Y, width, height, A
;ListVars
;Pause
center_x:=width/2
center_y:=height/2
MouseMove,center_x,center_y
return



;;;;;;;;;;;;;;;;;;
; OSX style keys ;
;;;;;;;;;;;;;;;;;;

; REPLACES ALT-TAB APPLICATION SWITCHING WITH OSX CMD-TAB
<#Tab::AltTab
;!Tab::return

; Closing windows and programs (using the Win Key)
#q::!F4

; The following section replaces Ctrl+Key with  Win+Key
#a::^a
#c::^c

;following won't remap using the normal method
#f::Send {LCtrl down}{f}{LCtrl up}

#n::^n

#r::^r

#w::Send {LCtrl down}{w}{LCtrl up}
#x::^X



#z::^z