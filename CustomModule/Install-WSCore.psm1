function Install-WSCore {
	param(
	    $Window_Server = 'C:\Users\dawal\Downloads\WinServerCore.iso'
)

	New-VM -Name "WinServer_Core" -MemoryStartupBytes 2GB -Generation 2 -NewVHDPath "C:\Users\dawal\Hyper-V\WinServerCore.vhdx" -NewVHDSizeBytes 60GB
	Set-VMProcessor -VMName "WinServer_Core" -Count 2 
	Connect-VMNetworkAdapter -VMName "WinServer_Core" -SwitchName "Default Switch"
	Add-VMDvdDrive -VMName "WinServer_Core" -Path "$Window_Server"
}
