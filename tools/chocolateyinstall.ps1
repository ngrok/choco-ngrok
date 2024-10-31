$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/pf7xoNuiwx/ngrok-v3-3.18.2-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/f5GnCwLJgYg/ngrok-v3-3.18.2-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '2a4b2f1e79dcb3904b6186d6378103bc7a194b5772ed03e960b22cfb10aae8a7'
  checksumType  = 'sha256'
  checksum64    = '2242f5c2ab221fbffee288d03dc1b73376335a84ee3752c6573f9debf2913fe3'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs