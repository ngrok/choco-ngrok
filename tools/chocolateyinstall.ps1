$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/2p82frWaztw/ngrok-v3-3.1.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/2wiwSrWhAbd/ngrok-v3-3.1.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '9dcc5ca5f121998fab73c100c2a33b63f977107db73e9d7f20d4ab6c5dfffbee'
  checksumType  = 'sha256'
  checksum64    = 'cda6e5f9b3b25946b6e49d0890a92a47da0e70880aaebfbe24eb513e805cb69f'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs