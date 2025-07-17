$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/284uR5ExAcJ/ngrok-v3-3.24.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/aWcPnJS9KW2/ngrok-v3-3.24.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '523b041337a463d787c5ac14fc2d4887cd7f4510be72918b2d5d67f98a81be10'
  checksumType  = 'sha256'
  checksum64    = 'ad1f48f4329000639252ce9f73b86cd7d1e6d23f0735fd6537d17afe6551d0da'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs