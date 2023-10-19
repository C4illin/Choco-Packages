$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v2.1.2/YouTube-Music-Web-Setup-2.1.2.exe'
  checksum               = '1467d0f746315cee4c11211c963df78d93f9a516762f196a7dc54022246d5ac8'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
