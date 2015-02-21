cd Chocolatey
Remove-Item *.nupkg
cpack
choco push *.nupkg
Read-Host "Press Enter key to continue"