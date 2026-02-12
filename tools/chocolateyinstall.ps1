$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/5vitKjXK932/ngrok-v3-3.36.1-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/9f9Ra6W4JVw/ngrok-v3-3.36.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '56c743306dc00b575d5d921e8aa533fa42961999041f958e2de4a541145d2e00'
  checksumType  = 'sha256'
  checksum64    = '2cf6f8bce5e642b26f147c46423d4ce7f70528450038201eb114519162a98281'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs