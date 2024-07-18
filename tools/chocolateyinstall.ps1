$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/66RbezPaNWw/ngrok-v3-3.13.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/c9ZYiPj6S73/ngrok-v3-3.13.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '7d052f40511fb64a3dc44097566bf99de39c09c736736cae338ceffaa1d28549'
  checksumType  = 'sha256'
  checksum64    = 'c1de397ff3a402da963e89c64e56e0390d8aa690002140a15aa2552381df08b0'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs