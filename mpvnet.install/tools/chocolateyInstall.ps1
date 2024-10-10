$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.2-beta/mpv.net-v7.1.1.2-beta-setup-x64.exe'
  checksum               = 'a26cbcb8c31851d4c550f263ba08611a8e4d950330c138417b44a6499e9566f0'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
