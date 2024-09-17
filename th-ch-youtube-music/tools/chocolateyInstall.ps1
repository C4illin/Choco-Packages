$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.5.3/YouTube-Music-Web-Setup-3.5.3.exe'
  checksum               = '3bdeedec5b00ada4f51628d54dce80738560ed2a58c13949170dc30be1cec188'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
