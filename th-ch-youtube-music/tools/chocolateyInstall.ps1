$ErrorActionPreference = 'Stop'
$toolsDir              = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.11.0/YouTube-Music-1.11.0.exe'
  checksum               = '578d7e1db95b5b993b66494edd89322ad9a487e6b1d4f627e96f4ea3efdad0c9'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

$ahkFile = Join-Path $toolsDir "ytmusicInstall.ahk"
Start-Process -FilePath 'AutoHotKey' -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs
