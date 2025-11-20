$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.5-beta/mpv.net-v7.1.1.5-beta-setup-x64.exe'
  checksum               = '3912846b1c18288d5090ca65f7eec3546f5939e5e73c7d65b2d4772b1e5cea41'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
