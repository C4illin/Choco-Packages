$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/sites/default/files/hybrid_downloads/Hybrid_2020.10.10.1_SETUP.exe'
  checksum               = 'ab2dba9f1c32c42e8a7e5155a1247ecd90d0d282ce0299e8401d03cd9a44d78c'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
