$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/v6.0.2.0/mpv.net-v6.0.2.0.zip'
  checksum               = '28891093b9f62eb248c0a1ff462fafbf6692a316477cbe2e5957a7f19ceb7b55'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
