$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.8.0/qalculate-2.8.0.msi'
  checksum               = ''
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
