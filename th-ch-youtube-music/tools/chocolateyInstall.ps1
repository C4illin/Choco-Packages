$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.1.1/YouTube-Music-Web-Setup-3.1.1.exe'
  checksum               = '9a783ad38a844b178412e6cf60a6148dd73e49949c29ce0f4a61bf755f5bb443'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
