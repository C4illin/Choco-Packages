$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.8.1/YouTube-Music-Web-Setup-3.8.1.exe'
  checksum               = '03a51a878da1e5ee16b23eac03cf2dfa592536cbac3b96a214aad59ae82e5d51'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
