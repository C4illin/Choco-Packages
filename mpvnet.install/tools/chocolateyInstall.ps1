$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.6-beta/mpv.net-v7.0.0.6-beta-setup.exe'
  checksum               = '3f0d8584a86ce97939fae0d267d992f844b4bdac5867bca638dfd04fd0e79243'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
