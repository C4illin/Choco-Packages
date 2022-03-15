$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'airexplorer'
  fileType               = 'EXE'
  url                    = 'https://www.airexplorer.net/downloads/AirExplorer-OnlineInstaller.exe'
  checksum               = 'fc98c7d16b1300ee623ab245ae091beee652cfce5c26f96f5a4b43b87c1836dc'
  checksumType           = 'sha256'
  softwareName           = 'AirExplorer*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
