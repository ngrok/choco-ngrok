$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/dDu21dc9veS/ngrok-v3-3.26.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/bncapxvKYz4/ngrok-v3-3.26.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '818dcee6655209ea7b2c6221df5d88ad275008d3e88f77d640170c386bc84982'
  checksumType  = 'sha256'
  checksum64    = '878b7596016b0cafa9098fb8d8b7dd2caf34a35fa18161c1aab260848add7b17'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs