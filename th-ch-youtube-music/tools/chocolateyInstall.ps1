$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.12.1/YouTube-Music-Setup-1.12.1.exe'
  checksum               = 'ecb696a39880b24869422ca85884669dfff3b55f26ae94b094f2c5735ffc4e12'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
