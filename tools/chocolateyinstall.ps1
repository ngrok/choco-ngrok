$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/jVTZAW2YBML/ngrok-v3-3.18.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/heixo8ueS9N/ngrok-v3-3.18.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'ccb8bed81f3e0e90db4927c573cc9c49b329701d0b4abc55976d1c1388da267b'
  checksumType  = 'sha256'
  checksum64    = '0cf0016fdbfeacaaac680d0cad2e65b97a349a74e165352d20263e8dc80d978e'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs