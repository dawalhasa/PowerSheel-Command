
function Download-Freebsd {
	param (
		$DownloadUrl = 'https://download.freebsd.org/releases/amd64/amd64/ISO-IMAGES/15.1/FreeBSD-15.1-RELEASE-amd64-dvd1.iso',
		$DestinationPath = 'C:\Users\dawal\Downloads'
	)	
	Write-Host "Downloading file from: $DownloadUrl" -ForegroundColor Cyan
        Invoke-RestMethod -Uri $DownloadUrl -OutFile $DestinationPath
$DownloadUrl =	for ($i=0; $i -le 100; $i+=20)
	Write-Progress -Activity "Downloading ... " -Status "$i% Complete:" -PercentComplete $i;
	Start-Sleep 10
}
