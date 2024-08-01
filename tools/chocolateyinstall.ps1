$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/gEm429UQqMJ/ngrok-v3-3.14.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/8eBQK4ZGzTM/ngrok-v3-3.14.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '525564634788a9447aa0913af844ae2104121a3e2fc04585d7897561800a8d37'
  checksumType  = 'sha256'
  checksum64    = '7683ffebd118b9ce7fc9511c16b13c1c1db8fdf3dfebc8e70e3a7b0cbcd0d2a2'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs