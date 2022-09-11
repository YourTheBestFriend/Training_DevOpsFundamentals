Get-Command -Name "\C*" 		#  Get all processes where name starts with C (capital C). 
Get-Command -Name "*-Service" 		#  Find all cmdlets that working with windows services.
Get-Help -Online Get-ChildItem  	#  Get online help for Get-ChildItem cmdlet.
Update-Help -Module (Get-Command New-Item).ModuleName 	#  Update help for New-Item cmdlet. ( (Get-Command New-Item).ModuleName == Microsoft.PowerShell.Management )