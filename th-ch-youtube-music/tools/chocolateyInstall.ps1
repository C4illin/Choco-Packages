$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.9.0/YouTube-Music-1.9.0.exe'
  checksum               = 'aaef355ea2f57f5a70126bbaf1dfcfc2f2f0cea407c002f863bd6da5a7bf1d65'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
