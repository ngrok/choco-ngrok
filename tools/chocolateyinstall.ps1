$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/eCzE8GmQVNV/ngrok-v3-3.12.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/gZ64LQ5tH15/ngrok-v3-3.12.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '4a52483c3df619e0a10fa595c7b9d3d28205ceb01cfc7c8db4ab3def318ff89f'
  checksumType  = 'sha256'
  checksum64    = '2adac691e54381f4f4e1eacf2c349a49e5ab9569c090357d54e84cbd9e913c11'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs