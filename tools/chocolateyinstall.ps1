$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/3c6cnRv7Yde/ngrok-v3-3.6.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/n314XTybk7Q/ngrok-v3-3.6.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'e37572e8f6500329e154db0d33069e3f0b772c6edcadb808e22e45d489a8de2b'
  checksumType  = 'sha256'
  checksum64    = '0b9a9630dcec14b2685d68f83e86ec3fe65d87ada9c4b8f1dba66972ce28a694'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs