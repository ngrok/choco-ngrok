$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/5UB1vVbnCGL/ngrok-v3-3.23.2-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/9zP6yHTkA75/ngrok-v3-3.23.2-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '1ff4f8da27edec8e660b83b36fb0ecb0053ddd823c9d2dc71e9d7625268999b9'
  checksumType  = 'sha256'
  checksum64    = '03caf03241e2e0727a3d06a13b81f01f998294f707efec564962d9f4939e6380'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs