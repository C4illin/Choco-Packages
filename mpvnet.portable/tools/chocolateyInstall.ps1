$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.3-beta/mpv.net-v7.0.0.3-beta-portable.zip'
  checksum               = 'd6357219fe831ffaf67b9df0e23f0b4f8a6ab9a4f733c5221e85d67ad6d758a3'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
