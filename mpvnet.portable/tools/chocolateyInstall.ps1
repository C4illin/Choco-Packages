$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.2-beta/mpv.net-v7.0.0.2-beta-portable.zip'
  checksum               = 'a8a8f541ca08d714f5fd27cdf00a174bec4d97c5244bd51d3507ab268a5df8c6'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
