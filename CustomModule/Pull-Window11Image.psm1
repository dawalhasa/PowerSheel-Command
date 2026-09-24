function Pull-Window11Image {
	[CmdletBinding()]
	param (
	  [string]$DownloadURl = "https://microsoft.com",
	  [string]$Destination = "$HOME\Downloads\Windows11InstallationAssistant.exe"
	)
	Invoke-WebRequest -Uri "$DownloadURL"  -OutFile "$Destination"
}
