$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v6.0.3.1/mpv.net-6.0.3.1-beta.zip'
  checksum               = 'a3c78644cb19c559c5b73f148df4b8c80f6287d9b713ea93426c3d52ace52c20'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
