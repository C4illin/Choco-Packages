$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.3.5/YouTube-Music-Web-Setup-3.3.5.exe'
  checksum               = 'ab73ee3264b8901374ec745e7a87ce906a85dd3dfb35e9e4679ec11ac755e98b'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
