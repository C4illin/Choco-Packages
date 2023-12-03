$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.0.2/YouTube-Music-Web-Setup-3.0.2.exe'
  checksum               = '000eec2dad9d1249848ac6a219a8c882e94100ad0ecfdaa5453802b82bc1534c'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
