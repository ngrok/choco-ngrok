$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
  packageName   = 'ngrok'
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = 'https://bin.equinox.io/a/fQJAKJj7xMG/ngrok-v3-3.30.0-windows-386.zip'
  url64bit      = 'https://bin.equinox.io/a/hibzBK6Kw8/ngrok-v3-3.30.0-windows-amd64.zip'

  softwareName  = 'ngrok'

  checksum      = 'e91269d187b83ce9e1a04a461f5ebeecaba88c73deee6c2be03a4c988c88c354'
  checksumType  = 'sha256'
  checksum64    = 'dfcbdadb8cbdb26e2789164796035b67a6142f9f764c76634c8af9b3c49d8fe0'
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = ''
}

Install-ChocolateyZipPackage @packageArgs