$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/3ZXNRAT1Whg/ngrok-v3-3.39.2-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/4f8H4TjAz9N/ngrok-v3-3.39.2-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '6649531fa4f1a092c3aa8e484e7c82caf59b090a451560a42c4d54800f89a966'
  checksumType  = 'sha256'
  checksum64    = '925034a3942b12e2f42b83ca3ab176aeb56c1896c7716cc2a003c55b8bb007fd'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs