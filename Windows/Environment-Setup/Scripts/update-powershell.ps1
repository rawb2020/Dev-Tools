# Win11 Setup Script
# File: update-powershell.ps1
# Author: Robert Crawford
# Version: v1.0, 01-07-2023
# Source: <Insert GitHub Link>

Write-Host "Updating PowerShell"
winget install Microsoft.PowerShell --accept-source-agreements
Write-Host "PowerShell has been updated."