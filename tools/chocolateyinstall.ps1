$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/dgSSnm3X1Go/ngrok-v3-3.37.6-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/7CSBSEZTqUr/ngrok-v3-3.37.6-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '9e3e3e4df259ed462f4e4a14cd72f5faec843ff7c074e6c8e5fb610d707bcc58'
  checksumType  = 'sha256'
  checksum64    = 'add0599359f6f5f80d2053f3c2d9edb52baf8a1cb50724a70dddceee10838069'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs