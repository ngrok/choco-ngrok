$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/bbx1YZZjxN5/ngrok-v3-3.34.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/a5dZ1xZdUdx/ngrok-v3-3.34.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '72e9b3e637e583e29bfde2237c3926d9064337806540d2dec8142277a1b80118'
  checksumType  = 'sha256'
  checksum64    = '4335868de6fc5896eafe2c6b85c807e46618e2f68f1e27982e7b15378814dab7'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs