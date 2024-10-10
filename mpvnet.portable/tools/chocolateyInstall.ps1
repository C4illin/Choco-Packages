$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.2-beta/mpv.net-v7.1.1.2-beta-portable-x64.zip'
  checksum               = '4d4854b314c95f98989a76194e870789a99ff19d8e78f8728ebece02fee73256'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
