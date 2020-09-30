#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_Res_Description=Whoami in a GUI, also displays whether the user is admin and the user's SID.
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_Icon_Add=Ava1219-Littlear-Help.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#Include <Security.au3>

$aAccount = _Security__LookupAccountName(@UserName)

If IsAdmin() Then
	$IsAdmin  = "True"
Else
	$IsAdmin  = "False"
EndIF

If @LogonDomain <> "" Then
	$LogonDomain = @LogonDomain & "\"
Else
	$LogonDomain = ""
EndIF
	MsgBox(0, "whoami GUI (Ctrl-C me)", "User:" & @Tab & $LogonDomain  & @UserName & @CRLF & "SID:" & @TAB & $aAccount[0] & @CRLF & "Admin: " & @Tab & $IsAdmin)
