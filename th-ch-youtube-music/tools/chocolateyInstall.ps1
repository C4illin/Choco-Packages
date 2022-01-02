$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.15.0/YouTube-Music-Setup-1.15.0.exe'
  checksum               = 'c4e2630244301c422c2ba2fc02a89fe5bf7dc163e40354f5b8524f2b4ff9cc28'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
