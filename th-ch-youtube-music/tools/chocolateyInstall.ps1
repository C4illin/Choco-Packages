$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.6.1/YouTube-Music-Web-Setup-3.6.1.exe'
  checksum               = 'e43fb6aab188549ebf610d0b18f24c5935a2503e0fcc58bf9d108f350cf4c294'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
