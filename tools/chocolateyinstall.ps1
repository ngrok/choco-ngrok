$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/7Su8x6SV3am/ngrok-v3-3.37.3-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/4UNfuieCy2h/ngrok-v3-3.37.3-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '9adffc1d1564972dd38c3c42ee0482f6b16696da1367d74c06d0ac8587fa11ca'
  checksumType  = 'sha256'
  checksum64    = '387ca26f88640382ecf3f5e2f240dff71b5fdf02d6d7e86fdb74b816f404bbaa'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs