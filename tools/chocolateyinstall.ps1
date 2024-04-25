$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/kzhzY3jxPHd/ngrok-v3-3.9.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/kZj1DjNoyZi/ngrok-v3-3.9.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '198f67b6df137c38ead0476927ed0e20b50bc45d3e0094981a946b14d0608247'
  checksumType  = 'sha256'
  checksum64    = '3a941b54e50c18ef8836ca78f7def32e1b8ee19a174582e155d139604967d7d6'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs