$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/7iqTAbe2DTk/ngrok-v3-3.18.4-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/4vvyKGoo1gc/ngrok-v3-3.18.4-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'dbb1ae3510c43ce1d37be5af26646ceb107a1c409571d796d7e939beed7ea569'
  checksumType  = 'sha256'
  checksum64    = '0ec8cf167a77ae420d7f483e74ac6bad6e653c36cccb03ddd8c9fd9f8b49ff24'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs