$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.ngrok.com/a/dfrxqFcsqtj/ngrok-v3-3.39.4-windows-386.zip'
  url64bit      = 'https://bin.ngrok.com/a/gK2xcZtiEuC/ngrok-v3-3.39.4-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'cc7ceaee491909b17cedf417128ee5237fb3e913a216346a7bac4b80aa9e377a'
  checksumType  = 'sha256'
  checksum64    = '9028276a33809a94fcf46a35733a21f013a6cc3b4a155ee849563af65dc118f2'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs