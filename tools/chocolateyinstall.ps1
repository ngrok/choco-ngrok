$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/evM199q2K6z/ngrok-v3-3.39.13-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/VUnfuMhAnU/ngrok-v3-3.39.13-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'a82158631148aca40a8336e55145c548199aab0e9841318ab6413cbdd7bfc5c7'
  checksumType  = 'sha256'
  checksum64    = '438bad3dbefd7e244be9dfae3889dcf99073b515845b66ab5617e4887bc24636'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs