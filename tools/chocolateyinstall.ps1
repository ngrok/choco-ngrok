$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/geNCVgxahsp/ngrok-v3-3.23.3-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/6dfv3YiCQCD/ngrok-v3-3.23.3-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'cd7cf88ba66148f1f9a1191d20d5bd981931287d69564ee699d8be843e9594c8'
  checksumType  = 'sha256'
  checksum64    = '5e70cb6ea09d463aa7a563caef96db66fdd7d34018aef22c09dc06e201302077'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs