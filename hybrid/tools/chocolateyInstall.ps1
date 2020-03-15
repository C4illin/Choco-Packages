$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url64                  = 'http://www.selur.de/sites/default/files/hybrid_downloads/Hybrid_2020.02.19.1_SETUP.exe'
  checksum64             = '868b10322a401c998faa2181afe9a2840d49ecddc403ed3d77869e4a0d88b0a0'
  checksumType64         = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
