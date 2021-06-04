$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/cfjNxTRk1tM/ngrok-2.3.40-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/8exBtGpBr59/ngrok-2.3.40-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'c1f32114f71fb05cf4f66e5c9a49f2d451891990f9e75f56b3dd8bb2cff520f4'
  checksumType  = 'sha256'
  checksum64    = '778cbe4d5f1c868a5687a97206bf39b017a76fc44eaead95a11cf8a415c2e505'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs