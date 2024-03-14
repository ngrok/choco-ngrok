$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/hwhBW5zHSSz/ngrok-v3-3.8.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/8yyNp2YvPXm/ngrok-v3-3.8.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '73621dc2d0069fbbdef0e9f27827d4d493b455281bb3b45aad680bf3dda13994'
  checksumType  = 'sha256'
  checksum64    = 'a930ee0ab39e8fa92e2e8a70f5e5579a9891b4950b6502e6629477927d0e803c'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs