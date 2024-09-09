$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/js2zL8jd6cm/ngrok-v3-3.16.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/bXcjjy4CoWK/ngrok-v3-3.16.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '9e373df279327e5bdaadde21254ed0c9ba51881c0e2b31e13dc3bca885368a42'
  checksumType  = 'sha256'
  checksum64    = '2566ddb40a7dce72395ccfff64d7c42664215d4248203726d01333bed927b887'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs