fastfetch
Set-Alias -name touch -value 'New-Item'
Set-Alias -name download -value 'yt-dlp'
Set-Alias -name grep -value 'findstr'
Set-Alias -name play -value 'Explorer'
Set-Alias -name rm -value 'Remove-Item'
Set-Alias -name update -value "update-help -force"
Set-Alias -name presentation -value "presenterm"
Set-Alias -name job -value "find-jobs"
Set-Alias -name open -value "ii $"
Set-Alias -name presentation -value "presenterm"
Set-Alias -name hyperv -value "virtmgmt.msc"
Set-Alias -name hyperv_restart -value "Restart-Service -Name vmms -Force"
Set-Alias -name hyperv_switch -value "Get-VMSwitch"
Set-Alias -name hyperv_stop -value "Stop-Process -Name vmconnect"
#Set-Alias -name cat -value "glow -s dark"
# Set-Alias -name google -value "search-google"
$env:EDITOR = "vim"


# Terminal Icons
Import-Module -Name Terminal-icons

function Edit-File {
    param([string]$Path)
    Start-Process vim -ArgumentList $Path -NoNewWindow -Wait
}
Set-Alias -Name ed -Value Edit-File

# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jblab_2021.omp.json" | Invoke-Expression
function prompt {
    $ESC = [char]0x1b
	return "$ESC[1;32mPowerShell$ESC[0m $ESC[0;90m>$ESC[0m "
}
# Before reconfigure a actul existing command run Remove-Item with flact Taph and -Fource Example: Remove-Item -Path Alias:ls -Force
# 
 function ls {
 	        # Ensure the path ends with a wildcard so -Exclude works correctly
 		 Get-ChildItem -Exclude .* | Format-Wide
}
# function ll {
# 		 Get-ChildItem 
# }
		
# Show SSH status
function ssh_service (){
	get-service -Name sshd | Select -Property Name
}
# Allow SSH traffic
function ssh_allow () {
	New-NetFirewallRule -Name 'OpenSSHServer' -DisplayName 'OpenSSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 2
}
# Linux which command equavilent
function which ($command){
	Get-Command -Name $command -ErrorAction SilentlyContinue |
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
# Open google cherom
function google(){
	start chrome "https://google.com"
}
# Directory of fullstack related project
function fullstack-automation(){
	set-location C:\Users\dawal\Project\fullstack\fullstack-automation
}
# Project Directory
function Project($p){
	set-location C:\Users\dawal\Project\$p

}
# Virtual Machine 
function Virtual-Machine($vp){
	set-location C:\Users\dawal\Project\Vagrant-Project\$vp && start vagrant up

}
# Window Module related project directory
function Module-Project($mp){
	set-location C:\Users\dawal\OneDrive\Apps\Documents\PowerShell\Modules\Module-Project\$mp

}
# I could not recall the this function purpose 
function find-jobs(){
	Get-Job | Where-Object { $_.State -eq 'Running' }
}
function healthcheckup(){
	Get-PhysicalDisk | Format-Table FriendlyName, MediaType, HealthStatus, OperationalStatus
}

# Connect other pc 

function Connect-RemoteServer {
    [CmdletBinding()]
    param(
        [string]$HostName = "10.106.156.40",
        [string]$UserName = "FreeBSD"
    )
    process {
        Write-Host "Connecting to $UserName@$HostName via SSH..." -ForegroundColor Cyan
        Enter-PSSession -HostName $HostName -UserName $UserName
    }
}
# Optional: Set a short alias for faster typing
Set-Alias -Name crs -Value Connect-RemoteServer
# Emacs Keybindins on Powershell Env
Set-PSReadLineOption -EditMode Emacs
# Emacs Keybindins & Powershell Env Conflict control
# Set-PSReadLineKeyHandler -Chord 'Ctrl+v' -Function Paste
