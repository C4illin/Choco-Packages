$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.0.0/mpv.net-v7.1.0.0-portable.zip'
  checksum               = '85564f8d585fa971208f0a68dfd69803fa4098f8df79d34f48595ae31c16c0a5'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
