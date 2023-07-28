$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/8n212tLRmgF/ngrok-v3-3.3.2-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/2oeWj5GFKLq/ngrok-v3-3.3.2-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'bee7e102549d0a7f1ee577fee2395b821e5db31f428da76203029f79dc0ab18a'
  checksumType  = 'sha256'
  checksum64    = '17e6b5710c2ff2759a97b0830622456657c4b2087d07cc7ad32f94135a612c59'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs