function Install-Bat {
	winget install sharkpd.bat
	New-Item -ItemType Directory -Force -Path "$env:APPDATA\bat"
	(Get-Content "C:\Users\dawal\AppData\Roaming\bat\config) -replace '--paging=auto' '--paging=never' | Set-Content config
	Write-OutPut "--style=plain" >> "C:\Users\dawal\AppData\Roaming\bat\config"
	bat --config-file
	Write-OutPut 'Set-Alias -Name cat -Valus "bat"' >> $PROFILE
}
