Stop-Start-Windows-Service
==========================

This will Stop/Start  all necessary service of windows 7 , windows 8 and windows server 2012 standard.

All the service to stop are mentation in a xml file , 
•	Run PowerShell in Admin mode
•	Set proper  execution policy 

•	To stop all service from predefined XML 
o	./Main.ps1  -ShouldStop $true -ServicefromXML  $true

•	To start all service from predefined XML file
o	./Main.ps1  -ShouldStop $false -ServicefromXML  $ false

•	To stop a single service 
o	./Main.ps1  -ShouldStop $true - ServiceName “servicename ”

•	TO start sinfle service 
o	./Main.ps1  -ShouldStop $false - ServiceName “servicename ”
