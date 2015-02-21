# OpenHere.ps1
# Write registry keys to add a 'PowerShell Here' option to the Windows Explorer right click menu.
   
# Create (or overwrite) the key and populate the value to appear in the menu.
   
$pspath = "C:\WINDOWS\system32\windowspowershell\v1.0\powershell.exe -NoExit"

# for right clicking on folders
New-Item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere -force 
Set-Item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere "Open PowerShell Here"
New-item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere\command -force
Set-item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere\command "$pspath Set-Location '%L'"

# for right clicking on drives
New-Item HKLM:\SOFTWARE\Classes\Drive\shell\PSOpenHere -force 
Set-Item HKLM:\SOFTWARE\Classes\Drive\shell\PSOpenHere "Open PowerShell Here"
New-item HKLM:\SOFTWARE\Classes\Drive\shell\PSOpenHere\command -force
Set-item HKLM:\SOFTWARE\Classes\Drive\shell\PSOpenHere\command "$pspath Set-Location '%L'"

# for right clicking on the background of folders
New-Item HKLM:\SOFTWARE\Classes\Directory\Background\shell\PSOpenHere -force 
Set-Item HKLM:\SOFTWARE\Classes\Directory\Background\shell\PSOpenHere "Open PowerShell Here"
New-item HKLM:\SOFTWARE\Classes\Directory\Background\shell\PSOpenHere\command -force
Set-item HKLM:\SOFTWARE\Classes\Directory\Background\shell\PSOpenHere\command "$pspath"