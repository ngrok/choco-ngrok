$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/ffi9HQP3veD/ngrok-v3-3.35.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/crR94YUJzmD/ngrok-v3-3.35.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '5b3bfd566cf8a0755cba20327d883d3853ad682540042f3b4db9f7c880e295bd'
  checksumType  = 'sha256'
  checksum64    = '2609fa49805a4ceabedee6757d7339f72fc9aeb5f727e80596db702172a544fe'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs