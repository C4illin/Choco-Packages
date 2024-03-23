$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.3.3/YouTube-Music-Web-Setup-3.3.3.exe'
  checksum               = 'f7496f93fa9eb8c1dd5358658468a6e111b5c9849dc08fd0cecc1d37b0c6d131'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
