$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/3B4eqUKH9Sn/ngrok-v3-3.33.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/cU3EU1Zj5uA/ngrok-v3-3.33.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'a1e83b5b1da69d424b3470f9d2c48d1efbb55999920dcbbe33540e587fb884ce'
  checksumType  = 'sha256'
  checksum64    = '40af11c49ea8f490c2207493971e5d7cd55f43e45809436283b7cc01eae3b62f'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs