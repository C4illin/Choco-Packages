$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.2.1/YouTube-Music-Web-Setup-3.2.1.exe'
  checksum               = '5cc042ed76ddd0b0ec9c17c72ff26b4c7451cefbe5df24c4d96775854f662176'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
