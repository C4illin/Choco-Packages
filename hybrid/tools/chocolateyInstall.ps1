$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/sites/default/files/hybrid_downloads/Hybrid_2023.12.22.1_SETUP.exe'
  checksum               = '4640cd885e6889d68a30b1cb4293494961e7052d3b92b8c7eed9b6e8d21fd8e4'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
