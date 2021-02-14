$ErrorActionPreference = 'Stop'
$toolsDir              = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

$packageArgs = @{
  packageName            = 'th-ch-youtube-music'
  fileType               = 'EXE'
  url                    = 'https://github.com/th-ch/youtube-music/releases/download/v1.10.0/YouTube-Music-1.10.0.exe'
  checksum               = '31d1c194785c326305bd401594902c719b44e4f9ea0711e34fcbe4e5b02f9c67'
  checksumType           = 'sha256'
  softwareName           = 'YouTube Music*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

$ahkFile = Join-Path $toolsDir "ytmusicInstall.ahk"
Start-Process -FilePath 'AutoHotKey' -ArgumentList $ahkFile

Install-ChocolateyPackage @packageArgs
