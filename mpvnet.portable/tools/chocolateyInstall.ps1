$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v6.0.4.0-stable/mpv.net-v6.0.4.0-stable.zip'
  checksum               = 'f5a64b9ee0768329b5eac98778d553fe6d069b151798108309d66f376bf1fb19'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
