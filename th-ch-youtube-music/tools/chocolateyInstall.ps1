$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v2.0.1/YouTube-Music-Setup-2.0.1.exe'
  checksum               = 'a9fd4c20f245f29d451b9507136a58692cc8d92588c5fe603f87754a1d7bc175'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
