$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.5-beta/mpv.net-v7.0.0.5-beta-setup.exe'
  checksum               = '473928f7d14412d883b7ebf1e1c45658377d17e00dfc87a3cb88a07a93bc8e10'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
