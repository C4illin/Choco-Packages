$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/v5.8.0.0/mpv.net-5.8.0.0-beta.zip'
  checksum               = '683b4f86e2192f8d9ca729bc4992fab4b1f44b248a08eff3e0b5ef4ff22a18b2'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
