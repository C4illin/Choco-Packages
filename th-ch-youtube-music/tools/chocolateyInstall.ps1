$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.7.3/YouTube-Music-Web-Setup-3.7.3.exe'
  checksum               = '30dd9c315cd74dd43f937b13e64f45c2349a6b0cdabfbbb8758c686e2cedc52b'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
