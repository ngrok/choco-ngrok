$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/cioWSfK6THC/ngrok-v3-3.23.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/kBTW8QnLAog/ngrok-v3-3.23.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'adf89de690a9bc26396f5d6d211c195942319bfa634d5fb51b6c3bd055ba3681'
  checksumType  = 'sha256'
  checksum64    = '80c71d71029b3303a2b1d430802f3c44c9440dca9e19efaaf6f1d1ecb9e77b54'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs