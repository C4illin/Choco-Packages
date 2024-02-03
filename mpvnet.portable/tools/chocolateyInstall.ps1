$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.0/mpv.net-v7.1.1.0-portable.zip'
  checksum               = '3c0f00e3fd57bfd6e118ddcd6e6dcfa9dfeb10290ac90d27ff355e0e16f61b12'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
