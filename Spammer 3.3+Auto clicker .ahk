;//////////////[Älä koske jos et tiedä mitä teet]///////////////
#NoEnv
#SingleInstance Force
SetWorkingDir %A_ScriptDir%
SetBatchLines, -1
toggle = 0
#MaxThreadsPerHotkey 2
CoordMode, Mouse, Screen
/*
_________________________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________________________
////////////////////////////////[Spammer 3.0 + Auto clicker]/////////////////////////////////






/////////////////////////////////[Made by: veskeli]//////////////////////////////////
_________________________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________________________
///////////////////////[Gui Hotkeys]////////////////////////

"Home" Show Gui 
"End" Close Gui
"Delete" Hide Gui

_________________________________________________________________________________________________________________________________
_________________________________________________________________________________________________________________________________
*/
;//////////////[Main Gui]///////////////
maingui:
{
 
Menu Tray, Icon, shell32.dll, 303
;_________________________________________________________________________________________________________________________________
Gui -MaximizeBox +AlwaysOnTop
Gui Add, Tab3, x-4 y0 w535 h322, Auto spammer|Auto clicker|Gui hotkeys
;_________________________________________________________________________________________________________________________________
;//////////////[Auto spammer]///////////////
Gui Tab, 1
Gui Add, CheckBox, x388 y32 w120 h23 Checked vCheckBox_1 gSubmit, Auto press enter
Gui Add, CheckBox, x261 y32 w120 h23 vCheckBox_2 gSubmit, Limited loop (may not work)
Gui Add, Edit, x201 y33 w52 h21 -number vnum2, 10
Gui Font, s12
Gui Add, Text, x7 y61 w36 h23 +0x200, Text:
Gui Font
Gui Add, Edit, x46 y62 w471 h136 vtext,
Gui Font, s10
Gui Add, Text, x323 y205 w68 h23 +0x200, Timer:(ms)
Gui Font
Gui Add, Edit, x397 y205 w120 h21 -number vnum1, 100
Gui Add, CheckBox, x73 y29 w120 h31 vCheckBox_4 gSubmit, Faster typing speed (0ms)
Gui Add, Hotkey, x397 y237 w120 h21 vHK1 gLabel,
Gui Font, s10
Gui Add, Text, x337 y235 w53 h23 +0x200, Hotkey:
Gui Font
Gui Add, CheckBox, x8 y207 w278 h23 vCheckBox_5 gSubmit, ctrl+v spammer
;_________________________________________________________________________________________________________________________________
;//////////////[Auto clicker]///////////////
Gui Tab, 2
Gui Add, Edit, x391 y38 w120 h21 vtim1, 100
Gui Add, Text, x333 y37 w52 h23 +0x200, Timer:(ms)
Gui Add, CheckBox, x193 y36 w120 h23 vlimit1 gSubmit, Limited loop
Gui Add, Edit, x146 y36 w42 h21 -number vtim2, 10
Gui Add, Text, x12 y83 w75 h23 +0x200, Mouse button:
Gui Add, DropDownList, x91 y84 w120 vklik1 gSubmit, Right||Left||Middle
Gui Font, s12
Gui Add, Text, x318 y271 w62 h23 +0x200, Hotkey:
Gui Font
Gui Add, Hotkey, x391 y272 w120 h21 vHK2 gLabel,
Gui Add, Text, x12 y58 w199 h23 +0x200, Click options:
Gui Add, Text, x13 y160 w200 h23 +0x200, Cursor position: (not working so dont use)
Gui Add, Radio, x13 y190 w120 h23 Checked vcurrent1 gSubmit, Current location 
Gui Add, Radio, x13 y219 w16 h23 vpick1 gSubmit, pick
Gui Add, Button, x30 y219 w80 h23 glocka, &Pick location
Gui Add, Edit, x130 y220 w46 h21 gSubmit vguiinf1, 
Gui Add, Edit, x198 y220 w44 h21 gSubmit vguiinf2, 
Gui Add, Text, x114 y219 w14 h23 +0x200,  X
Gui Add, Text, x183 y219 w14 h23 +0x200,  Y
;Gui Add, Button, x296 y152 w80 h23 gtest1, Test
;Gui Add, Edit, x392 y152 w103 h23 +0x200 vtest2 gSubmit ReadOnly, 
;_________________________________________________________________________________________________________________________________
;//////////////[Gui Hotkeys]///////////////
Gui Tab, 3
Gui Font, s14
Gui Add, Text, x9 y35 w120 h29 +0x200, Gui Hotkeys:
Gui Font
Gui Add, Text, x10 y68 w120 h23 +0x200, Home = Show Gui
Gui Add, Text, x9 y101 w138 h23 +0x200, End = Close Gui (Force exit)
Gui Add, Text, x8 y133 w120 h23 +0x200, Delete = Hide gui
Gui Show, w523 h315, Spammer 3.0
Return
}
;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________
;//////////////[hotkey stuff]///////////////

Label:
 If %A_GuiControl% in +,^,!,+^,+!,^!,+^!     
  return
 num := SubStr(A_GuiControl,3)                 
 If (savedHK%num%) {                         
  Hotkey,% savedHK%num%, Label%num%, Off     
  savedHK%num% .= " OFF"                     
 }
 If (%A_GuiControl% = "") {                  
  TrayTip, Label%num%,% savedHK%num%, 5     
  savedHK%num% =                             
  return                                     
 }
 Gui, Submit, NoHide
 If StrLen(%A_GuiControl%) = 1               
  %A_GuiControl% := "~" %A_GuiControl%       
 Hotkey,% %A_GuiControl%, Label%num%, On     
 TrayTip, Label%num%
  ,% %A_GuiControl% " ON`n" savedHK%num%, 5  
 savedHK%num% := %A_GuiControl%              
return
;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________
;//////////////[CheckBox stuff]///////////////

Submit:
Gui, Submit, Nohide












return
GuiControl,,var1,%guiinf1%
;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________
;//////////////[Auto spammer]///////////////
Label1:

if (CheckBox_5==1) ;ctrl v --------<
{ 
if (CheckBox_2==1)
{
Gui, submit, NoHide
Loop %num2%
{
Gui, submit, NoHide
Send ^v
sleep 2
if (CheckBox_1==1) ;Auto enter
{
send, {Enter}
}
sleep %num1%
}
}

;_________________________________________________________________________________________________________________________________
else if (CheckBox_2==0) ;normal spammer
{
Toggle := !Toggle
while Toggle{
Gui, submit, NoHide
Send ^v
sleep 2
if (CheckBox_1==1) ;Auto enter
{
send, {Enter}
}
sleep %num1%
}
}

}
;ctrl v >-------
;_________________________________________________________________________________________________________________________________

if(CheckBox_5==0)
{ ;spammer normal xd
;_________________________________________________________________________________________________________________________________
if (CheckBox_2==1)
{
Gui, submit, NoHide
Loop %num2%
{
if (Checkbox_4==1)
{
SetKeyDelay, 0
}
if (Checkbox_4==0)
{
SetKeyDelay, 1
}
Gui, submit, NoHide
SendRaw %text%
sleep 2
if (CheckBox_1==1) ;Auto enter
{
send, {Enter}
}
sleep %num1%
}
}

;_________________________________________________________________________________________________________________________________
else if (CheckBox_2==0) ;normal spammer
{
Toggle := !Toggle
while Toggle{
 if (Checkbox_4==1)
{
SetKeyDelay, 0
}
if (Checkbox_4==0)
{
SetKeyDelay, 1
}
Gui, submit ,NoHide
SendRaw %text%
sleep 2
if (CheckBox_1==1) ;Auto enter
{
send, {Enter}
}
sleep %num1%
}
}
}
;_________________________________________________________________________________________________________________________________

;_________________________________________________________________________________________________________________________________



return

;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________
;//////////////[Auto clicker stuff]///////////////

xpos2 := xpos1
ypos2 := ypos1

locka:
keyWait, LButton, D
MouseGetPos, xpos1, ypos1 
;MsgBox, The cursor is at X%xpos1% Y%ypos1%. 
;MsgBox, %guiinf1%
return

test1:
Lul++
return

Lul := 0




;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________
;//////////////[Auto clicker]///////////////
Label2:

if (pick1 == 1)
{
if(limit1 == 1)
{
 loop %tim2%
{

MouseClick, %klik1%,%xpos1%,%ypos1% 
sleep %tim1%
}
}
 
if(limit1 == 0)
{
Gui, submit, NoHide
Toggle := !Toggle
while Toggle{
MouseClick, %klik1%,%xpos2%,%ypos2%
sleep %tim1%
}
}
}


if (current1 == 1)
{
if(limit1 == 1)
{
 loop %tim2%
{

MouseClick, %klik1% 
sleep %tim1%
}
}
 
if(limit1 == 0)
{
Gui, submit, NoHide
Toggle := !Toggle
while Toggle{
MouseClick, %klik1% 
sleep %tim1%
}
}
}

return

;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________
;//////////////[Hotkeys]///////////////

Home::
IfWinNotActive, maingui
{
	Gui, show
}
return

Delete::
IfWinActive, maingui
{
	Gui, Hide
}
return

End::
ExitApp

GuiEscape:
GuiClose:
    ExitApp
;_________________________________________________________________________________________________________________________________
;_________________________________________________________________________________________________________________________________

