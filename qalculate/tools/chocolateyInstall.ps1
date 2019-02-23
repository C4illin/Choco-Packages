$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.9.0/qalculate-2.9.0.msi'
  checksum               = 'c1a37cf7491d1eaae4192fdeb278878aa06d811b0ae1d8346fde894f62acbe96'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
