$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.5.1/YouTube-Music-Web-Setup-3.5.1.exe'
  checksum               = '78e93f10dd84f420e5b80228b6b13d76a9fedce437a114eb3a126397ccbba323'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
