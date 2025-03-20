$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/kiFe8ULx1tB/ngrok-v3-3.22.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/eWHFaQ6wxum/ngrok-v3-3.22.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '8962aab8dca0bd044c5ea97de13b9299ddec95bf38aca10a0ab63861302cdff7'
  checksumType  = 'sha256'
  checksum64    = '03cfe3e147abf8fac14dcc118fa84602ed3ff844f9b24a28cac8aefb26cfcf0b'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs