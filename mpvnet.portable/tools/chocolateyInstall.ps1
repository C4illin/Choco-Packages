$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.5-beta/mpv.net-v7.1.1.5-beta-portable-x64.zip'
  checksum               = 'aff8add9fa335c61eb88228d2b52ee00dc45642601ac403d359a06e7b9818a04'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
