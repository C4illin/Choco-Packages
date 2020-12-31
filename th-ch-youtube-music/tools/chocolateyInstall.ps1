$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.8.0/YouTube-Music-Setup-1.8.0.exe'
  checksum               = '0473ad3b9552ca7dde0db82c33dd6efc0b04892f1191cde343eb36f17eeb3bc2'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
