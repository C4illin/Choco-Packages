$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'airexplorer'
  fileType               = 'EXE'
  url                    = 'https://www.airexplorer.net/downloads/AirExplorer-OnlineInstaller.exe'
  checksum               = 'e73c022c3f68f3828b55dadacb8db2813454ad851c9d2beda62cbdf2be6e8baf'
  checksumType           = 'sha256'
  softwareName           = 'AirExplorer*'
  silentArgs             = '/S'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
