$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.3.11/YouTube-Music-Web-Setup-3.3.11.exe'
  checksum               = '1672dd787b346637638348c1c1a5ec9ccdbeac0618f5737c966492d806b59bb9'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
