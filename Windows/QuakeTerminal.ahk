; Change your hotkey here
^<::

DetectHiddenWindows, on
IfWinExist ahk_class Console_2_Main
{
	IfWinActive ahk_class Console_2_Main
	  {
			WinHide ahk_class Console_2_Main
			WinActivate ahk_class Shell_TrayWnd
		}
	else
	  {
	    WinShow ahk_class Console_2_Main
	    WinActivate ahk_class Console_2_Main
	  }
}
else
	
	Run C:\Users\p_skeller\App\Console2\Console.exe

DetectHiddenWindows, off
return

; hide Console on "^esc".
#IfWinActive ahk_class Console_2_Main
^esc::
{
   	WinHide ahk_class Console_2_Main
   	WinActivate ahk_class Shell_TrayWnd
}
return