$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/nfMAgAThaEr/ngrok-v3-3.19.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/2yfSHhTAG7E/ngrok-v3-3.19.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'a39d58ee0a0d8bb3aaaf9adfadb7905493f12698c4de39db43b464a2f4571cc1'
  checksumType  = 'sha256'
  checksum64    = '5f2e53c3345085de2588ee6de6a7f69ba5d194b39aff148fbc9eb431ca190900'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs