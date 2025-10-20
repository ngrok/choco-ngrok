$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/2x43m3Fh6VQ/ngrok-v3-3.31.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/7gkWFTACG8r/ngrok-v3-3.31.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '2042dda4fd580f58e1ca727eba221ec64df1700605ec8cfe9d547df65bd94f59'
  checksumType  = 'sha256'
  checksum64    = '5c8e9377df292ccec2ee4e3b5ac8859a3cd44b5c304e35f482aa6728ff7cdff0'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs