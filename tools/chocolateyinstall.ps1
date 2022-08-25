$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/81jrbunFneV/ngrok-v3-3.0.7-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/naPRoR8femh/ngrok-v3-3.0.7-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'a5c8a3995089b0fb32f84ba787f6136effc98584edee2b411eeb3e37ee9033bf'
  checksumType  = 'sha256'
  checksum64    = '78fb301c43d13a5d9350a18e8ec7a5f4b789032e5e803723fb6eaf238a3e7ccd'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs