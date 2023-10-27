$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v2.2.0/YouTube-Music-Web-Setup-2.2.0.exe'
  checksum               = '5ebcba7d47a66c5e3ab7a17070b5b423794a27d68bad9fdbc15d3fa86cee3b00'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
