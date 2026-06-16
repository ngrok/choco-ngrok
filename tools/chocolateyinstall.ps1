$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/3UfW8wTSfKL/ngrok-v3-3.39.8-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/8CfTTG2KfSo/ngrok-v3-3.39.8-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '0bb950bbc3d4865ff8ff634cc1c62ad68b80f3a1b1ff2e264d21b43041931906'
  checksumType  = 'sha256'
  checksum64    = '56c71bb8d3c7d8f5f85e7df65b1458d0dc3806d056ea99a7a0aaa7ad5c899988'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs