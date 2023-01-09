# Win11 Setup Script
# File: setup.ps1
# Author: Robert Crawford
# Version: v1.0, 01-07-2023
# Source: <Insert GitHub Link>

# Check if PowerShell has administrator privs.
function Test-Administrator
{
    If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
    {
        Write-Warning "You do not have Administrator rights"
        
        # Prompt user to re-run the script as administrator.
        $UserInput = ""
        while ($UserInput -ne "y" -and $UserInput -ne "n") {
            $userInput = Read-Host "Re-run the script as an administrator? (y/n)"
        }

        # If yes, elevate privs.
        if ($UserInput -eq "y") {
            # Open a new powershell window, change to current directory, and execute the script again.
            Start-Process powershell.exe -ArgumentList ("-NoExit", ("Set-Location {0} ; .\setup.ps1" -f (Get-Location).path)) -Verb RunAs
            # Close the current powershell window.
            Stop-Process -id $PID
        } else {
            return $False
        }
    } else {
        return $True
    }
}

# Check if running powershell as admin.
$IsAdmin = Test-Administrator
if ($IsAdmin) {
    .\Scripts\install-winget.ps1
    .\Scripts\update-powershell.ps1
    .\Scripts\update-terminal.ps1
}