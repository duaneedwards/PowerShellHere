# OpenHere.ps1
# Write registry keys to add a 'PowerShell Here' option to the Windows Explorer right click menu.
   
# Create (or overwrite) the key and populate the value to appear in the menu.
   
# for right clicking on folders
Remove-Item -Recurse HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere -force 
#Remove-Item HKLM:\SOFTWARE\Classes\Directory\shell\PSOpenHere\command -force

# for right clicking on drives
Remove-Item -Recurse HKLM:\SOFTWARE\Classes\Drive\shell\PSOpenHere -force 
#Remove-Item HKLM:\SOFTWARE\Classes\Drive\shell\PSOpenHere\command -force

# for right clicking on the background of folders
Remove-Item -Recurse HKLM:\SOFTWARE\Classes\Directory\Background\shell\PSOpenHere -force 
#Remove-Item HKLM:\SOFTWARE\Classes\Directory\Background\shell\PSOpenHere\command -force