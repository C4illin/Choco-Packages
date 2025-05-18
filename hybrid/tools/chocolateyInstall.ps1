$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/files/hybrid_downloads/Hybrid_2025.05.18.1_SETUP.exe'
  checksum               = '667dfc742083463fa37476d29927ee6aa60164ff89cdad62f2bf10d08f59b99b'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
