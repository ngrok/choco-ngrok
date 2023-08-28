$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/2pJwkeuwPBx/ngrok-v3-3.3.4-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/gnt2X9TLU/ngrok-v3-3.3.4-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '135bed258a23defc55ce53deee1323421b028e1e369d0e45994a943b6ca07b37'
  checksumType  = 'sha256'
  checksum64    = 'abcb69d3425951a9ae85d02a65188243621e12c06d3c8dfa4e1f1595f90649e0'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs