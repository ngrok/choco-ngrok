$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/4n6fsaG6Yev/ngrok-v3-3.10.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/ku7Xv3KfMLp/ngrok-v3-3.10.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'bc2df87d2ae531f6a06c75fc7f3bb4078db360eeeaa0028632ad399734a077ef'
  checksumType  = 'sha256'
  checksum64    = 'f37794539730a4be0c166371ca75aabb1594aa6a28a97da55f87eb553cf9ce40'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs