$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/kBiM47Xk1cG/ngrok-v3-3.25.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/5usRQdAyZt9/ngrok-v3-3.25.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '0c60c45830d0bc28f65c70475535c07bc4350f6b9385cbf57912dddea288bf38'
  checksumType  = 'sha256'
  checksum64    = 'dc22ac54fbc06f6ed3d97e64bb00c85e6eef85b5fbbfb70ffff4cb6d6b9cfb34'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs