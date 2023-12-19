$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.4-beta/mpv.net-v7.0.0.4-beta-portable.zip'
  checksum               = '3c53aff010b5e6da6ea8a96ed830f662071a8306e31b1c48c2f344b60f8441da'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
