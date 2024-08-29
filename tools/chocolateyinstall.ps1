$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/gy29HUfLzWs/ngrok-v3-3.15.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/e5RNmCizWeM/ngrok-v3-3.15.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'da2e97daccc4c416e1dc024da35bc62d79cc17d63a954533acab0d2ddac6b684'
  checksumType  = 'sha256'
  checksum64    = '5b1cd2ca89e010ffb60d0c7f500c61068f371bf9f202c67b533ea0da1fb110e3'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs