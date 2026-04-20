$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/fJS2Y7wYQUB/ngrok-v3-3.38.0-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/6K3r7R3NK2a/ngrok-v3-3.38.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '7a8a03eaa28e9a2a2972034d9386ca34149c8187c3eba1bc83229a7d90dda50d'
  checksumType  = 'sha256'
  checksum64    = 'a294ea53809f8be30bed7ba53b992a35008e0516d7947963c3189f9ef86a0dc8'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs