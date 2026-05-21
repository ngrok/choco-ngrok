$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/3Y4M646xo74/ngrok-v3-3.39.3-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/npeJUCoGBXf/ngrok-v3-3.39.3-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '5088759ec864b85ce648944122c025397c7c9b1f4759852650b1ecceff41e691'
  checksumType  = 'sha256'
  checksum64    = '268e3ceb17564a47ed26f419d63b7d8027e4ed792e3734319dbc387198d14c4b'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs