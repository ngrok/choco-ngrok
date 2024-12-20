$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/42dfdEgJxGo/ngrok-v3-3.19.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/bjtcPNfaiTB/ngrok-v3-3.19.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'dab18919b2694756ac82efc51d51440b1540507f1662cee281fa087018ec6f30'
  checksumType  = 'sha256'
  checksum64    = '4a6c47773a18e8769dd5683e339d0c9b46d026641c3f44917bd9cf45c9c6565a'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs