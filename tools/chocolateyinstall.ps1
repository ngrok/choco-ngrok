$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/cvHdAB55fbe/ngrok-v3-3.39.12-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/kUqBcNTVnQa/ngrok-v3-3.39.12-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '300b24fd2249c20d30e7dcfeaa5361c231eccabd3962cac71aa9dc5128487674'
  checksumType  = 'sha256'
  checksum64    = '05181f7942ecfc22d4bc571b509fc923a69c05de5b06bb299676cc861ed8a81e'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs