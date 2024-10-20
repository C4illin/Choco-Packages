$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.3-beta/mpv.net-v7.1.1.3-beta-portable-x64.zip'
  checksum               = '9372f0c96e411a3a37e9e0e04f35cc26500c3943ec2f12b44978106c6cf32393'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
