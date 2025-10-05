$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'mpvnet.install'
  fileType               = 'EXE'
  url                    = 'https://github.com/mpvnet-player/mpv.net/releases/download/v7.1.1.4-beta/mpv.net-v7.1.1.4-beta-setup-x64.exe'
  checksum               = 'f3f4bcd4720fc7d20e4b6282eb2145e12ee8d73d0a885d805589e3b18f5dd31a'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'mpv.net*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
