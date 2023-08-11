$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/7WQCRtNTEMt/ngrok-v3-3.3.3-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/2rKsmkiZD1B/ngrok-v3-3.3.3-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '71dae58ba0f2fca0d844d0a36ff72d892f570d8f05bc7d4e9b71d17e0637ab82'
  checksumType  = 'sha256'
  checksum64    = '89ed5e2a182f5a562f96560fe073fc9d8d4e3e4c18157c06494341242b63b78f'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs