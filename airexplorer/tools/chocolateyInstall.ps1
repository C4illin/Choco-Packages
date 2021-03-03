$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'airexplorer'
  fileType               = 'EXE'
  url                    = 'https://www.airexplorer.net/downloads/AirExplorer-OnlineInstaller.exe'
  checksum               = 'db1faf6036951b8d64d7efa57e354779bf88cd02b40be09cefece2d5a440c9c5'
  checksumType           = 'sha256'
  softwareName           = 'AirExplorer*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
