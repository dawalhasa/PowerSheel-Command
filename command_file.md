---
title: MS Dos Useful Command 
author: ཟླ་བ་ལྷ་ས།
---

<!-- new_lines: 5 -->
<!-- alignment: center -->
Development Image Servicing and Management Tool
===============================================

<!-- alignment: left -->
<!-- new_lines: 1 -->
## First command checking the health
<!-- new_lines: 3 -->
```PS1
DISM /Online /Cleanup-Image /CheckHealth
```
<!-- end_slide -->

<!-- new_lines: 10 -->
## Second command Scan the Health
<!-- new_lines: 3 -->
```PS1
DISM /Online /Cleanup-Image /ScanHealth
```
<!-- end_slide -->

<!-- new_lines: 10 -->
## Thirde Command Restore Health
<!-- new_lines: 3 -->

```PS1
DISM /Online /Cleanup-Image /RestoreHealth
```
<!-- end_slide -->

<!-- new_lines: 10 -->
## System File Checking Tool sfc command
<!-- new_lines: 3 -->
```PS1
sfc /scannow
```
<!-- end_slide -->
<!-- new_lines: 10 -->

## This is how to check service with property name 
<!-- new_lines: 3 -->
```PS1
Get-Service | where {$PSItem.status -eq "running" -and  $_.name -like "ssh*"} 
```
<!-- end_slide -->


<!-- new_lines: 10 -->


## How to clear the log files
<!-- new_lines: 3 -->

```PS1
Get-WinEvent -ListLog * | Where-Object {.RecordCount} | ForEach-Object { [System.Diagnostics.Eventing.Reader.EventLogSession]::GlobalSession.ClearLog(.LogName) }
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Print N number of lines
<!-- new_lines: 5 -->
```PS1
get-Content .\tcp_packet.csv -TotalCount 10
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Output CSV file in sheet 
<!-- new_lines: 5 -->
```PS1
Import-Csv .\tcp_packet.csv | Out-GridView
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Enable PowerShell Remote in normal mode
<!-- new_lines: 5 -->
```PS1
enable-PSRemoting
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Set Window Management Quick Configuration
<!-- new_lines: 5 -->
```PS1
Set-WSManQuickConfig -Force
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Enable PowerShell Remote Session from Server
<!-- new_lines: 5 -->
```PS1
Enable-PSRemoting -Force
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## To Enable PowerShell Remote Session
<!-- new_lines: 5 -->
```PS1
Enable-PSRemoting -Force -SkipNetworkProfileCheck
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Test Window Server Management
<!-- new_lines: 5 -->
```PS1
Test-WSMan
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## Check Window Remote Management
<!-- new_lines: 5 -->
```PS1
Get-Service WinRM
```
<!-- end_slide -->

<!-- new_lines: 5 -->
## PowerSheel Session
<!-- new_lines: 5 -->
```PS1
Enter-pSSession -ComputerName Dawalhasa
```
Get-WinEvent -ListLog * | Where-Object {.RecordCount} | ForEach-Object { [System.Diagnostics.Eventing.Reader.EventLogSession]::GlobalSession.ClearLog(.LogName) }
