$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.1-beta/mpv.net-v7.0.0.1-beta.zip'
  checksum               = '848feea0c9dd66bcfcf203c01f4fc93eb95d09dc21103c229558bad2bc3e17fd'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
