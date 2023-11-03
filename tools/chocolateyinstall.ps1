$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/maEfCjqSyYd/ngrok-v3-3.4.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/2coTPSPcmQw/ngrok-v3-3.4.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '740b0cdceda5424064a991f81049830ca4ab6a8c064606b64a93b0724f9e4879'
  checksumType  = 'sha256'
  checksum64    = '261ca9a1f2e26594f55c963c2f33aed5ff398ac7b0c5edd48c82b675ff6ec191'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs