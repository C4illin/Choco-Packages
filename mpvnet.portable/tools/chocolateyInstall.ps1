$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v6.0.3.2-beta/mpv.net-6.0.3.2-beta.zip'
  checksum               = '81975f82de761320e06f11f59a6983348c64d110f89a8a1779ba8a4a80813176'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
