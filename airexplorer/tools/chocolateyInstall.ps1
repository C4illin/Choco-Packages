$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'airexplorer'
  fileType               = 'EXE'
  url                    = 'https://www.airexplorer.net/downloads/AirExplorer-OnlineInstaller.exe'
  checksum               = '8dbe576f00dbec448e859334cc43fa4bc64d1d7cf23ef4e8dc1de8301f47c985'
  checksumType           = 'sha256'
  softwareName           = 'AirExplorer*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
