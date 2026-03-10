$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/jtq2VCig29S/ngrok-v3-3.37.2-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/7EGZGAFgZEe/ngrok-v3-3.37.2-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '6937a8f61134e79e0f26b615079f27cba9e6e5d1f0e07eba4041ac9ea31cca8a'
  checksumType  = 'sha256'
  checksum64    = 'c5909c7743497f3e390c965c8d9875832eb83ba5ebb8e25ffe07c7c8c4f36f14'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs