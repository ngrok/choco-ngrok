$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/jarhu6gP9Yg/ngrok-v3-3.5.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/5CREvcnBfSd/ngrok-v3-3.5.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '17ee7f086f07eca736ef542a3b824ec17765021ae9ad9b3d0c1561f7002b46a6'
  checksumType  = 'sha256'
  checksum64    = 'd5ce821dc787ad3e8604cbc98f510d30ed1534c5a7e17fff480b82d388af4ef7'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs