$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/files/hybrid_downloads/Hybrid_2025.05.17.1_SETUP.exe'
  checksum               = '911bc8e3f0910245e66ffc2d345cf28a38c9f6cc915e52928f7acfca051a43fd'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
