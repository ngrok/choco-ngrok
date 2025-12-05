$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/6uPWzN83TtU/ngrok-v3-3.34.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/TTJFUAhPki/ngrok-v3-3.34.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '389c84aad07a92897f13113f6a173eb6de44d9e5d5fae6d50db71476979fe586'
  checksumType  = 'sha256'
  checksum64    = 'd4fc9e0b9bf89a2c8f06126bdee9cac2b28c52a6f1d52e52ea1da0e6f9139d44'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs