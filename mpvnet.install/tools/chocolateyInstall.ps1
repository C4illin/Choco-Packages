$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.0.0/mpv.net-v7.1.0.0-setup.exe'
  checksum               = '2f56d0d95a43ee2d5febeae6700620e73a19c878fe6a57d85893f6631df7d85d'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
