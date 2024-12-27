$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.7.1/YouTube-Music-Web-Setup-3.7.1.exe'
  checksum               = 'f2105b25c2dc02949f220b4c0592479ddbbeb63cdd3a73fc01861908705335d9'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
