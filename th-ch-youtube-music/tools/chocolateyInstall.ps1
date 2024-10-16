$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v3.6.2/YouTube-Music-Web-Setup-3.6.2.exe'
  checksum               = '30210190faa7633eba31435308fbe2d26d31befe7e8a677bef88a997a9e0f0f0'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
