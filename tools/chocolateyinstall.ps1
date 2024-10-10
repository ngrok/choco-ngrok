$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/ao5YGVP8amR/ngrok-v3-3.17.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/nfnU7jYMftP/ngrok-v3-3.17.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '857340d0be7d5f741d56c3fdd07cd0f328eb02b47d675bd47950ab8a51248572'
  checksumType  = 'sha256'
  checksum64    = 'e81b4645133816b2f6a8b109a0ff84710d5faf3f5fb6eae508973094000a2522'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs