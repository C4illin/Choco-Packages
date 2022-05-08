$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.portable'
  url                    = 'https://github.com/stax76/mpv.net/releases/download/v5.9.0.0-beta/mpv.net-5.9.0.0-beta.zip'
  checksum               = 'f206e435ac9a41fffd865c35b9fdd89228f0a8787194d14fa9b432f33a94d735'
  checksumType           = 'sha256'
  unzipLocation          = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
