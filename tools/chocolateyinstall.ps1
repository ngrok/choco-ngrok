$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/3irv2vKTS1b/ngrok-v3-3.11.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/3NeuEBeKLN8/ngrok-v3-3.11.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'e57b91e154821258d716b36ad901f944b8dc15838e828d34e130dde06b7e1973'
  checksumType  = 'sha256'
  checksum64    = '564630ff6e61fa77e5bbf922b00699d72f4b4ed691aececc66b76757ea441c0d'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs