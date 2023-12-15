$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.2-beta/mpv.net-v7.0.0.2-beta-setup.exe'
  checksum               = '576e684f5e378ee7ef9205646c4e5b3420c684b4b157165f67aeb1f596d742c8'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
