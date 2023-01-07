# Environment Setup

This directory contains scripts that are for setting up my development environment on a clean install of **Windows 11 22H2**.
Most of the scripts _should_ work on Windows 10 but I haven't verified this yet. If you don't know what you're doing, use these scripts at your own risk.

---

### Setting Execution Policy

To be able to execute scripts, you will have to run PowerShell as an administrator. Furthermore, you 
will need to change the execution policy in order to execute scripts. If you are not sure what this means, you should read
this before continuing: [about Execution Policies](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3)

Depending on the environment, it may be a good idea to take note of the current execution policies and change them back after
running the scripts in this directory.

To save your current execution policies in a txt file:
```powershell
Get-ExecutionPolicy -List >> executionPolicies.txt
```
To view your current execution policies:
```powershell
type executionPolicies.txt
# or
Get-ExecutionPolicy -List
```
Allow the current user to execute scripts:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

You can set the execution policies to their defaults with the following command. However, the default policies aren't necessarily the same as what they were previously which
is why we made a note of what they were before changing them. Right?
```powershell
Set-ExecutionPolicy Default
```

