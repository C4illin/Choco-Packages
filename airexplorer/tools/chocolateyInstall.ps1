$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'airexplorer'
  fileType               = 'EXE'
  url                    = 'https://www.airexplorer.net/downloads/AirExplorer-OnlineInstaller.exe'
  checksum               = '4f2c849fb84d9d4eef0204888fcb23f21569617511fadb5668407e76c9fc043d'
  checksumType           = 'sha256'
  softwareName           = 'AirExplorer*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
