$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/6CjNuUeQ5Ti/ngrok-v3-3.39.11-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/P2eJimSQ97/ngrok-v3-3.39.11-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '2635ab8521cbd3ab4b99ce5da6c26e4c51a30d704fad53fbd4b01cdf29d94f81'
  checksumType  = 'sha256'
  checksum64    = '699bbf1932ec43a573b764bd03e6568efa2c4e45955eb3cc2089c19bb4be4464'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs