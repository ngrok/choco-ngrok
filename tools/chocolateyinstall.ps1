$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/cupb2mhHCiW/ngrok-v3-3.20.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/ddqSvMRh81q/ngrok-v3-3.20.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'ae28b7af8677fcd140d8e088e4e626e954b1f44f7e7461efcee46d85a46d7f11'
  checksumType  = 'sha256'
  checksum64    = 'cca53e73e99ff04b6adffeb0c407f8c4ea410c17d3f7392e9e25d09f893c6afa'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs