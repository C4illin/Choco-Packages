$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/v6.0.3.0/mpv.net-6.0.3.0-beta.zip'
  checksum               = '39b00382f3608a2d60b21e42c3bdd27e5f24d432b1e1767cda4c137b4dddc3a3'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
