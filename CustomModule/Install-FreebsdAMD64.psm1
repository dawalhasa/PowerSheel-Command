function Install-FreebsdISO {
param (
        $DownloadUrl = 'https://download.freebsd.org/releases/amd64/amd64/ISO-IMAGES/15.1/FreeBSD-15.1-RELEASE-amd64-dvd1.iso',
	$DestinationPath = 'C:\Users\dawal\Downloads'
)	
	Write-Host "Downloading file from: $DownloadUrl" -ForegroundColor Cyan
        Invoke-RestMethod -Uri $DownloadUrl -OutFile $DestinationPath
}
