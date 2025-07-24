$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/MFDdMkS6qt/ngrok-v3-3.25.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/j5VKSKAYbk8/ngrok-v3-3.25.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '3d2aa68fd8e766f0f87cc8a3570da2ba43d38ba81583835288098d2b4036dbdb'
  checksumType  = 'sha256'
  checksum64    = 'eb5992a97930bfe9fe2bfda9eec6929118a5fd2883bf86d13ca5cb206172367f'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs