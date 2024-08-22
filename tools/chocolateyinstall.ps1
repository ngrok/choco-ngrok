$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/ddmkH5JXoh/ngrok-v3-3.14.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/c4Cafbnz7jm/ngrok-v3-3.14.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'ad3158574677547f28db677693cd0b2905c31a14d11c51489b0498ff1453b0c6'
  checksumType  = 'sha256'
  checksum64    = '4e604d7e2af9365956404c51667407deb29edfffaa33f6226453b444a290a600'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs