$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.19.0/YouTube-Music-Setup-1.19.0.exe'
  checksum               = '0846c5dd3e3aaad452ec1c2568fba0ead172786aac69fbbecc3244b91dde70be'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
