$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.5.2/YouTube-Music-Web-Setup-3.5.2.exe'
  checksum               = '5c3dab0240e77a1dc216ac9eada7371b998f78eeedb2ebafecae735e0e657351'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
