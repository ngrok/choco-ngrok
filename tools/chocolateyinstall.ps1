$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/jKENmHYpeaV/ngrok-v3-3.21.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/WsMGvdkU3t/ngrok-v3-3.21.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'b6ebf8e726e68adf3efa64da3130583225c4bd5fed8b0da549bc944f0583f223'
  checksumType  = 'sha256'
  checksum64    = '909b9ab13d97af12e59753f0c3dd0d6f9b2170010264b187e4f0735907f18331'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs