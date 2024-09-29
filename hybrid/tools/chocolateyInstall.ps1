$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/sites/default/files/hybrid_downloads/Hybrid_2024.09.29.1_SETUP.exe'
  checksum               = '61e033dcb107be717f7e884503740000fdbf3a2da0c2d87bab767b57073559be'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
