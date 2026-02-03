$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/9jFPr4TBJZF/ngrok-v3-3.36.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/3rHQMTKnZ8w/ngrok-v3-3.36.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'bc5c1414f09df37a37a24fa230700c2487d7441cb0f685c9e6de9157007eead6'
  checksumType  = 'sha256'
  checksum64    = '8115f9d1f6e17a2dd77937e7beacdc40154b12161f3a72c610bcf7f3a548d199'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs