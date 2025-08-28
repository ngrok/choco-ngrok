$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/gjfPiRWHUgN/ngrok-v3-3.27.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/kQgLdpZ2qYk/ngrok-v3-3.27.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '1a5c256bc99b24fde44cd3a0a9081cd8c990887c109473b843964acf647b01c3'
  checksumType  = 'sha256'
  checksum64    = 'd1530d847f9bf7957d627bb8b208f14e2fa39ab7281cc8bcc6645ce553e4ae34'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs