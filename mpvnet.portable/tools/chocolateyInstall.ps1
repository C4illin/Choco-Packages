$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/v6.0.1.0/mpv.net-v6.0.1.0.zip'
  checksum               = 'd541c373d397db11fa28042a8a4fb39d2b4a1647c6a31de40556f9e7f9a0bd23'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
