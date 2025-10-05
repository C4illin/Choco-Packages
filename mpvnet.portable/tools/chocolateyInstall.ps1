$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.4-beta/mpv.net-v7.1.1.4-beta-portable-x64.zip'
  checksum               = 'fa2a6774fad690406eb9ef5eb7c43614d178267160d59ac730de71df33c93097'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
