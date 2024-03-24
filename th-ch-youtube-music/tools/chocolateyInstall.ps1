$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.3.4/YouTube-Music-Web-Setup-3.3.4.exe'
  checksum               = 'dc59c3d723b5cfacba3e7a11afbc3937cee4a87edc64ad4a6042373fb12883ad'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
