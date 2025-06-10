$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/3HzrPcm47cm/ngrok-v3-3.23.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/gxEpCrezMRz/ngrok-v3-3.23.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '8e40d88ad8415b12047d8063e9c082a505f119d8f41e533e7e6a063d7c872e04'
  checksumType  = 'sha256'
  checksum64    = '46d619dcc65deeaf2103fe10d95e52e1c0b780ae012b9b89daf4c7f421c9bec7'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs