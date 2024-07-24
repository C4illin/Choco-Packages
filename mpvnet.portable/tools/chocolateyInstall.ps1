$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.1-beta/mpv.net-v7.1.1.1-beta-portable-x64.zip'
  checksum               = '08db067f8e12d7d5e2333ba952c92abae9ef5a39a80af0e609954e65b81f9bd6'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
