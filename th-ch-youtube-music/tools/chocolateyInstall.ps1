$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.3.10/YouTube-Music-Web-Setup-3.3.10.exe'
  checksum               = 'f5c8978b643dfd958d06f8f7cf25d726184970c2759ab1d2e97ec4d00fd0f112'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
