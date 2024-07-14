$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.4.1/YouTube-Music-Web-Setup-3.4.1.exe'
  checksum               = 'd91882c3420727b00f8c3d6c72c4086f4ce26d0c09782930bc27d51d0ce732bb'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
