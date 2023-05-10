$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/dpwUDwNBzwV/ngrok-v3-3.3.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/516AtQ83xaN/ngrok-v3-3.3.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'd8423956322fd3a6be541d26a2ecdfdf280462f5c09703c422cc9c9d213f10e7'
  checksumType  = 'sha256'
  checksum64    = '88fb24e8539963fd3ff1f6a9e35ec8f08abfdea957273ef2c0f7607a0eee8912'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs