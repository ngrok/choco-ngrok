$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/hGJKiTfoSwk/ngrok-v3-3.28.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/jSEfcuyHGEo/ngrok-v3-3.28.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '7ad2fd44f9d464251330c78fc8f84a5dd7d45f879b957ebead98e5ac2b55c410'
  checksumType  = 'sha256'
  checksum64    = '34ceafb1f00087636281ad31fbc630f9e422dcacf285966058fe946a86cdbf57'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs