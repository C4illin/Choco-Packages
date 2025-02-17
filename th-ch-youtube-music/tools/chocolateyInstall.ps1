$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.7.4/YouTube-Music-Web-Setup-3.7.4.exe'
  checksum               = '3f3e0ca9ac750b6379643767c5cca9976ed3e06736e01ff9b71be1018d9504fd'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
