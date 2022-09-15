$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.18.0/YouTube-Music-Setup-1.18.0.exe'
  checksum               = '70cc048a5af1b3f8f65b6a3a9ecd69dc964c897c24f93b1b619d584b90872536'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
