$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v2.1.3/YouTube-Music-Web-Setup-2.1.3.exe'
  checksum               = '3d8d3d6368d84358a6b2a1e44c8c1e568906b6c4f53aa9b35fcdd2bb06638f1f'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
