$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/6zwGdDocrnP/ngrok-v3-3.39.7-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/7cgQ894JTG7/ngrok-v3-3.39.7-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'c263ebe19a877c2d3ff37e9a9d93e533f0fc99c4366575b41cee35eabca8379c'
  checksumType  = 'sha256'
  checksum64    = '5a0646b6c59aa6e7bd642e36444ce4e609ef821f21591009aa7f9b6c1168815d'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs