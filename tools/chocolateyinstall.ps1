$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/6ScSMj3w1Xw/ngrok-v3-3.39.9-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/m9v4MphCUjA/ngrok-v3-3.39.9-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '044936d25c6dbb92ab0a68a46f055db2f541521fbf1002d0df575c9755e1dae3'
  checksumType  = 'sha256'
  checksum64    = '12f99dc3b2145ab1503602434e00fd38199a5545dc051dd86ba526c11ab97db1'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs