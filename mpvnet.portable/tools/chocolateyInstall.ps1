$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.5-beta/mpv.net-v7.0.0.5-beta-portable.zip'
  checksum               = '55cd810b9e0ab7baf6dc39f24d6c48585cb7f15893a322ae00e3fba9c2f22f75'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
