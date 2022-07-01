$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/3aoR5DNKK47/ngrok-v3-3.0.6-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/99ct3EVvfTp/ngrok-v3-3.0.6-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '916828aad4585099eae5d79a5a85398626842b1b35269bc55e0e4bf5a3ba639f'
  checksumType  = 'sha256'
  checksum64    = '04d110f8c10659b48a85151e9985c192877d75cfb98840b6630a63790642454e'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs