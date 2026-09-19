function Install-Rufus1 {
# 1. Ask Microsoft's backend for the official Rufus Store package link
$StoreUrl = "https://apps.microsoft.com/detail/9pc3h3v7q9ch"

$ApiUrl = "ms-windows-store://pdp/?ProductId=9PC3H3V7Q9CH"
$Body = @{ type = 'url'; url = $StoreUrl; ring = 'RP' }
$Response = Invoke-RestMethod -Method Post -Uri $ApiUrl -Body $Body

# 2. Extract the hidden .msixbundle file URL from the response
$DownloadUrl = ([regex]::Matches($Response, 'href="([^"]+\.msixbundle[^"]*)"') | Select-Object -First 1).Groups[1].Value

# 3. Download the package to your temporary folder
$TempFile = "C:\Users\dawal\Downloads\ISO"
Invoke-WebRequest -Uri $DownloadUrl -OutFile $TempFile

# 4. Install Rufus directly to Windows via command line
Add-AppxPackage -Path $TempFile

# 5. Clean up the temp file
# Remove-Item $TempFile
}
