$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v2.1.1/YouTube-Music-Web-Setup-2.1.1.exe'
  checksum               = '87d53ccc85cb7e8f0335444a3d298fd101766a4036df3e06461cbfa2341d6122'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
