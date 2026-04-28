$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/n6xB9M9Y6NG/ngrok-v3-3.39.1-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/3mE3fjj2otg/ngrok-v3-3.39.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '246db70206853250bd4d2e246d021239e8df5127e7690453d007e57c8f062d68'
  checksumType  = 'sha256'
  checksum64    = 'd4d4b4044294048bb2cf7061c8447b8aa52a878f256e9ff22d11dc479a7dbd93'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs