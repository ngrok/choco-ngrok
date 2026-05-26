$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/3AYtDNdYans/ngrok-v3-3.39.5-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/2UbtQqmSscq/ngrok-v3-3.39.5-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'ed1aa409a8286dedfd67e11b1a7a8f79718e7d2e2171f66580ca6708879b68d2'
  checksumType  = 'sha256'
  checksum64    = '3be04bf2054b6f283c637b509b5824f982367c307f4438739246e31ed2689d1f'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs