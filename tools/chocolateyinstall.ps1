$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/a3opRNcfokH/ngrok-v3-3.12.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/kFHy8QNzTrM/ngrok-v3-3.12.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '069e2c45321e1821f715c93fba005615230232c0eb5978ef6d1404a90e4bacd0'
  checksumType  = 'sha256'
  checksum64    = 'c99e0c2cadb73bd3c7bd9ad0511e0b2bdc6215c0c63756c0833f4e271b5f6f2d'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs