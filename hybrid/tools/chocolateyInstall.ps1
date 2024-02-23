$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'hybrid'
  fileType               = 'EXE'
  url                    = 'http://www.selur.de/sites/default/files/hybrid_downloads/Hybrid_2024.02.23.1_SETUP.exe'
  checksum               = '32ab0d113e26144a17de22a1b71cec679181f265f0475015275b02eb76823c11'
  checksumType           = 'sha256'
  softwareName           = 'Hybrid*'
  silentArgs             = '/VERYSILENT'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
