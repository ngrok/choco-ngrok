$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/kTzG9JgTgy8/ngrok-v3-3.3.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/cJk8dzafvmN/ngrok-v3-3.3.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'd562bc5ff3f6a952f5cef8d2ddf28a7f28694c947ef89236eef70f512f85563d'
  checksumType  = 'sha256'
  checksum64    = 'c48450904a1266d868b8bab0928560dc54f950cbd963b882882068d753f44030'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs