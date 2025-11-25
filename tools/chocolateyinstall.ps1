$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/etfSGwvLPVs/ngrok-v3-3.33.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/kBFCkhCo1qQ/ngrok-v3-3.33.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '5fb087e885af256aa705395d275d3594cffb31adbb01a64c0c90cab27c06f545'
  checksumType  = 'sha256'
  checksum64    = '1c4ee1c140be8fe1266d60fff569b5f8ffaf2d7e410eb93f37d5d5066097308a'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs