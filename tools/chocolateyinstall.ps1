$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/9u8yahTHX4s/ngrok-v3-3.2.2-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/g4XPehdu4do/ngrok-v3-3.2.2-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'c387968e49ab2752369bb2113a4c772282e0402c50dc4e22794171a4647eda0d'
  checksumType  = 'sha256'
  checksum64    = '19148ae5a50428ca17ca8d4f0879a4e33f116a378e9a3005637c69c1b0495814'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs