$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.7.0/YouTube-Music-Web-Setup-3.7.0.exe'
  checksum               = '8fc1be7a9a47c1cf6896efa4cf1399010dc3cca800244516ac9d820b953faef4'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
