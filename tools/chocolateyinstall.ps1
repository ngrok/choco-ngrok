$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/5Rzr4j9N73h/ngrok-v3-3.18.3-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/fNFCcnAZ5Pa/ngrok-v3-3.18.3-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '537bf85160c6a5f3a782c8e20d7a7a3f8e6a7043d3a03d549a9a787cb8e62356'
  checksumType  = 'sha256'
  checksum64    = 'd5e66d87b31e6e50dd5d4fdeb8701030428928d0898cb099db45562a1f772bf6'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs