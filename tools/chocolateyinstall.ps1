$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/2grvzdYFP8p/ngrok-v3-3.39.0-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/a8E1KBaEHLA/ngrok-v3-3.39.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'eda263a1f6b9ae74f0cf661dab69611e1cb643193950c024accce41e7565461d'
  checksumType  = 'sha256'
  checksum64    = 'f50dd0b3e5d54ffccb6f44cbf6d66d23ba6c9b7100d979765a813368e9afa548'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs