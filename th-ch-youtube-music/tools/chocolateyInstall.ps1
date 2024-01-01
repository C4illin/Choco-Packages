$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.2.0/YouTube-Music-Web-Setup-3.2.0.exe'
  checksum               = '851d95c4c0214ad324775c47e0b07460aa474c3e980ac93b5f58f3b5d3894609'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
