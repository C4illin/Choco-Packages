$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.0.0.3-beta/mpv.net-v7.0.0.3-beta-setup.exe'
  checksum               = 'cc4f015f1fe83734012f21f2da432156d41f69a65cc3332667d4c9044b5ddfa6'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
