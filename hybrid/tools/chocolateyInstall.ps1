$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/files/hybrid_downloads/Hybrid_2025.05.18.2_SETUP.exe'
  checksum               = '3cb1a7394ee55c8ef4160c25f4ebb8c9971872e265d2851ff98673b4ba863561'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
