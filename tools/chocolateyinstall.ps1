$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/f65qTjLDAdj/ngrok-v3-3.22.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/9ehA2XFs1ZK/ngrok-v3-3.22.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'aac3cf5f467b3b8be367c76a2729641207b7a72a8b4d3c266f790a2097511c3b'
  checksumType  = 'sha256'
  checksum64    = '94efe52fd817d771e46c89261f15c66071b0d03af71907ddbbcb29ce700d40d4'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs