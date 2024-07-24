$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.1-beta/mpv.net-v7.1.1.1-beta-setup-x64.exe'
  checksum               = '210dec49da3ab467c6d6cf794c47f89117da18fdd74ebdf3bfb6b83bcdb91177'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
