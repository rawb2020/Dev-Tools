# Environment Setup

This directory contains scripts that are for setting up my development environment on a clean install of **Windows 11 22H2**.
Most of the scripts _should_ work on Windows 10 but I haven't verified this yet. If you don't know what you're doing, use these scripts at your own risk.

This is meant to be an automated process with minimal user input. I may add functionality to configure the scripts automatically but that's not the plan as of now. If you want to customize the scripts, you can edit the script files.

## Setting Execution Policy
To be able to execute scripts, you 
will need to change the execution policy in order to do so. If you are not sure what this means, you should read
this before continuing: [about Execution Policies](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3)

Depending on the environment, it may be a good idea to take note of the current execution policies and change them back after running the scripts in this directory.

To view the current execution policies:
```powershell
Get-ExecutionPolicy -List
```

Allow the current user to execute scripts:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

You can set the execution policies to their defaults with the following command. However, the default policies aren't necessarily the same as what they were before changing them.
```powershell
Set-ExecutionPolicy Default
```
