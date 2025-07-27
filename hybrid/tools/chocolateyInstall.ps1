$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/files/hybrid_downloads/Hybrid_2025.07.27.1_SETUP.exe'
  checksum               = 'f6781dab29f7e3d690f490949dc5c45a9b46c66bfaa8ac754dc49aa7af426c54'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
