$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.6.0/YouTube-Music-Web-Setup-3.6.0.exe'
  checksum               = 'c71cf29036d6f11ab0e82962fc99deac75310ad22f8e8a9944e6763b395c946e'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
