function win_server{
 param(
        [string]$VMName,
        [int]$MemoryGB,
        [string]$VHDPath
        [string]$VHDSize
        [int]$VMProcessor_Count
        [string]$SwitchName
        [string]$ISO_Path
    )

New-VM -Name "WinServer_Core" -MemoryStartupBytes 2GB -Generation 2 -NewVHDPath "C:\Users\dawal\Hyper-V\WinServerCore.vhdx" -NewVHDSizeBytes 60GB
Set-VMProcessor -VMName "WinServer_Core" -Count 2
Connect-VMNetworkAdapter -VMName "WinServer_Core" -SwitchName "Default Switch"
Add-VMDvdDrive -VMName "WinServer_Core" -Path "C:\Users\dawal\Downloads\ISO\SERVER_EVAL_x64FRE_en-us.iso"

# 1. Check if the VM exists to prevent errors
$VM = Get-VM -Name $VMName -ErrorAction SilentlyContinue

if ($null -ne $VM) {
    # 2. Check the VM's operational state
    if ($VM.State -eq "Off") {
        Write-Host "Server '$VMName' is currently stopped. Starting it now..." -ForegroundColor Yellow
        Start-VM -Name $VMName
    } 
    elseif ($VM.State -eq "Running") {
        Write-Host "Server '$VMName' is already running!" -ForegroundColor Green
    } 
    else {
        Write-Host "Server '$VMName' is in a state of: $($VM.State)." -ForegroundColor Cyan
    }
} else {
    Write-Warning "Could not find a virtual machine named '$VMName' on this host."
}

# Virtual Machine will start automatically
Start-VM -Name "WinServer_Core"

write-how "your virtual machine is '$VM' status"

$IP_Address = (Get-VM -Name "YourVMName").NetworkAdapters | Select-Object IPAddresses
write-host "This is your default ip address '$IP_Address'"
}
set-alias -Name create_server -Value win_server
