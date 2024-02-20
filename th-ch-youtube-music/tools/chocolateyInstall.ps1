$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.3.2/YouTube-Music-Web-Setup-3.3.2.exe'
  checksum               = '9784ccd5c3ec6f898a587cf4c74791b4ea1421171df9ba6c8315ddab49d59096'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
