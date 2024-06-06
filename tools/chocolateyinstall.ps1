$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/4LELK6kvFXT/ngrok-v3-3.10.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/5ftQ9CGJSEU/ngrok-v3-3.10.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'de45a24006461541d2a71002a0568c60a58efa5307f0c804db06a78fdf0f651c'
  checksumType  = 'sha256'
  checksum64    = '14a2dfcbac6aecec98c46162b903809a562e51f8045e7dece6a508b40c3f33ea'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs