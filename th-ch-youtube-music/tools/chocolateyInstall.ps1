$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.10.0/YouTube-Music-Web-Setup-3.10.0.exe'
  checksum               = '082870e749a2dfb55af9c9e3c19a2afceb6e0a6fae30b1f02fdcc4b9447424cf'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
