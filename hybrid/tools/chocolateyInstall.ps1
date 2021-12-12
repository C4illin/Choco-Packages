$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/sites/default/files/hybrid_downloads/Hybrid_2021.12.12.1_SETUP.exe'
  checksum               = '692cce868cd76faed5182cb53ef0d7f6c99196a0c0f0a7f21b7e4b0ca40d2b6c'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
