$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.14.0/YouTube-Music-Setup-1.14.0.exe'
  checksum               = '5c2d13bd5107584533fea78a7f9b8ff1e5676d52ea3e96b91cfa6c2824e7701c'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
