$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/5BvjhrDzf9Q/ngrok-v3-3.3.5-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/45wEnzgJxa9/ngrok-v3-3.3.5-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'cdd6b31a9f88c1c4fedcf90ace2e6379bf1825a9f47e7f53e3b0283d660df3af'
  checksumType  = 'sha256'
  checksum64    = 'df7f8d667a2842cad20da9dea1e8eebae6a970fea83dd3ce8cd5357e0b64a856'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs