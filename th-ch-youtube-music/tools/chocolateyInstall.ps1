$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.0.1/YouTube-Music-Web-Setup-3.0.1.exe'
  checksum               = '6013935d8b72649a638d004e6b5ee2bcbe664ec2bbeb3eb6abf7c9a72d6cde94'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
