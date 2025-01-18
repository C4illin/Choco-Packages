$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.7.2/YouTube-Music-Web-Setup-3.7.2.exe'
  checksum               = '94325850dc1b591a6c7d7b85b007e7f93b81eddd9f72580b9968efcd012a906e'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
