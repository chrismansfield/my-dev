[CmdletBinding()]
param([Switch]$Global=$false)

# Setup any environment variables neccesary
[System.Environment]::SetEnvironmentVariable('DEVENV', $PSScriptRoot, 'User')

# Copy configuration files
if($Global -eq $true){
	Write-Information "Applying git configuration globally"
	$gitFolder = (Get-Command 'git.exe').Path
	$gitConfigLocation = $gitFolder.Substring(0, $gitFolder.IndexOf('\cmd')) + '\mingw64\etc\gitconfig'
} else {
	Write-Information "Applying git configuration"
	$gitConfigLocation = "$Env:HomeDrive\$Env:HomePath\.gitconfig"
}
Copy-Item "$PSScriptRoot\gitconfig" $gitConfigLocation

Write-Information "Applying hyper configuration"
Copy-Item "$PSScriptRoot\hyper.js" "$Env:AppData\Hyper\.hyper.js"

Write-Information "Applying PowerShell profile"
Copy-Item "$PSScriptRoot\Microsoft.Powershell_profile.ps1" $PROFILE
