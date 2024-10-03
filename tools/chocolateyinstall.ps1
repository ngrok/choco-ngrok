$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/khR4v95vf41/ngrok-v3-3.16.1-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/5BZzsvLCaBc/ngrok-v3-3.16.1-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'b1a2578583e7310bac3277291ddfc553fb663eefbc0bcfbcb12a7c2bf8632d8d'
  checksumType  = 'sha256'
  checksum64    = 'c457c3e1c3e5d248a32b92c81282554820f6b12e2f4c18d7809fc251dbb21f7f'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs