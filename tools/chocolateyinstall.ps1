$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/iGNNtd3Jwzs/ngrok-v3-3.18.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/iyP5A35vzZy/ngrok-v3-3.18.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'dd27e90bdb42c4a468e0e9f813f461396a104f3da07549909d1d1c8ee92cdbc9'
  checksumType  = 'sha256'
  checksum64    = '850905740ccbeca6897e0d50a4b1d6f5c8e53453b4791b363154ec9ad5972ce1'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs