# Win11 Setup Script
# File: install-winget.ps1
# Author: Robert Crawford
# Version: v1.0, 01-07-2023
# Source: <Insert GitHub Link>

Write-Host "Downloading & Installing WinGet"

# Store link to msixbundle in a variable.
$WinGet = "https://github.com/microsoft/winget-cli/releases/download/v1.3.431/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"

# Download the file.
Invoke-WebRequest -Uri $WinGet -OutFile winget.msixbundle

# Install the package.
Add-AppPackage "winget.msixbundle"

# Remove winget.msixbundle.
Remove-Item winget.msixbundle
