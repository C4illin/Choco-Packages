$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.5.0/YouTube-Music-Web-Setup-3.5.0.exe'
  checksum               = 'f8f9419296b769f70afecbf7aa81c235144db72e1cf00a5381377c4bdfc0d5ec'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
