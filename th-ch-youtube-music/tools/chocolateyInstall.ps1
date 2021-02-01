$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.7.2/YouTube-Music-Setup-1.7.2.exe'
  checksum               = '2d0be6022662e0e2b5554f70e2a1bd9dbe6f7993bbab28de43e9042808f01c51'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "ytmusicInstall.ahk"
Start-Process -FilePath $ahkExe `
              -ArgumentList $ahkFile `
              -PassThru

Install-ChocolateyPackage @packageArgs
