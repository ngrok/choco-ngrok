$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/ge1biavgrLt/ngrok-v3-3.39.6-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/971cHyC98V7/ngrok-v3-3.39.6-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'b9c2d41c5278629de1bee60f4d418c4cf218b2e5beed95af83c86737b0440388'
  checksumType  = 'sha256'
  checksum64    = 'eaca5b169ceceb7491151e38cb32471c5412c4898258074b639477cc89936a24'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs