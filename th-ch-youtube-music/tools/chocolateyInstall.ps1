$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.16.0/YouTube-Music-Setup-1.16.0.exe'
  checksum               = '093f546888ce6b6ef94974c66e5951f6a9a63a8bc85ef5b37b7517d2273290a6'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
