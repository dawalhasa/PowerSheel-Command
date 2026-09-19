function Install-ServerFile {
    [CmdletBinding()]
    param (
        [Parameter(HelpMessage = "Enter the direct HTTP/HTTPS URL of the installer file.")]
	[Alias("Url")]
        [Uri]$DownloadUrl = 'https://software-download.microsoft.com/download/sg/20348.169.210806-2348.fe_release_svc_refresh_Server_EVAL_x64FRE_en-us.iso'
    )

    process {
        try {
            # LINE 14 (FIXED): Extracted filename cleanly without formatting glitches
            $FileName = [System.IO.Path]::GetFileName($DownloadUrl.LocalPath)
            
            if ([string]::IsNullOrEmpty($FileName)) { 
                $FileName = "downloaded_installer.iso" 
            }
            
            $DestinationPath = Join-Path $env:TEMP $FileName

            # Download the file
            Write-Host "Downloading file from: $DownloadUrl" -ForegroundColor Cyan
            Invoke-RestMethod -Uri $DownloadUrl -OutFile $DestinationPath

            Write-Host "File successfully downloaded to $DestinationPath" -ForegroundColor Green
        }
        catch {
            Write-Error "An error occurred: $_"
        }
    }
}

