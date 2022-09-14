$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/2NgSoAVhidW/ngrok-v3-3.1.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/5tq9LnwqUNB/ngrok-v3-3.1.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '27f76471dbb78a3407fdb381458b0b2c744724e3c6f3607e396039edf31c0d6d'
  checksumType  = 'sha256'
  checksum64    = '06259e8a86f35561318c8bb5205001c50794702f23057183bf0e0f6e09c549a2'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs