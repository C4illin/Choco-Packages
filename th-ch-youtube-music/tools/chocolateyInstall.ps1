$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.9.0/YouTube-Music-Web-Setup-3.9.0.exe'
  checksum               = '44dfa68978701d3a1e4e1404f47d098ca57b526569a5f8c5fe9abcbe77c1551f'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
