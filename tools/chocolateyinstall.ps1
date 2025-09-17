$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/4beZgyTMPgh/ngrok-v3-3.29.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/bgYGY4zpmkR/ngrok-v3-3.29.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '4e1f0e3b01a9f22f2dead2ba6078fd77158830df62fa2b5c41465b8d9bb8bfbe'
  checksumType  = 'sha256'
  checksum64    = 'e4b6f7f74cfd20fbea4b8f266904ce488cc068e434be73b627e944af98eae8e9'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs