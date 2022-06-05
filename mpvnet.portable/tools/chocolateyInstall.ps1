$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/v6.0.0.0-beta/mpv.net-6.0.0.0-beta.zip'
  checksum               = 'dd33d10bcb4bbe69878453f5f72e97178397de159b2c8261d0fbd3532436aefc'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
