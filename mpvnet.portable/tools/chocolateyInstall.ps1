$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.6-beta/mpv.net-v7.0.0.6-beta-portable.zip'
  checksum               = '3b680bdebfeacd6859c9e3968c96dcd0b57d03ef4eb1f2b71c3ec53b75d997f5'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
