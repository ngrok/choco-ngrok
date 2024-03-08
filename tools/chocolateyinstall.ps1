$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/3xJqnwYvB5F/ngrok-v3-3.7.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/m47ZXLZmbmk/ngrok-v3-3.7.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '77e28897eb7637f3e4bce110ce6a386aac1d7cc1e587e6a8155f5b1f81aa1007'
  checksumType  = 'sha256'
  checksum64    = '3985b1a3d5b37ae88880964c2272441ccb170f4feed7a46e28ad5530b6e056a6'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs