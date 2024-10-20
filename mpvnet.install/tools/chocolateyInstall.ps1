$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.3-beta/mpv.net-v7.1.1.3-beta-setup-x64.exe'
  checksum               = '2de65430f4ee1d6b894780f30b5a5ff2c0e8092f8eef40f9d5a607986b70970b'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
