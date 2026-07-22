$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/b9yrH8dFFtq/ngrok-v3-3.39.10-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/4L7aVh5HPND/ngrok-v3-3.39.10-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = '3b5724dbd716d3cb5d1ae0ae4ca8a36a9097ce57a43751f4ee69cc57ee3534fb'
  checksumType  = 'sha256'
  checksum64    = '34a62ff5869c6d217502432475419a43c79ca3d8264ae0332a1f02a4bf35dd31'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs