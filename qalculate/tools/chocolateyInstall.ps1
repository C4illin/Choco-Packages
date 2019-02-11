$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.9.0/qalculate-2.9.0.msi'
  checksum               = 'edf6cb9e3ae606e09bb6442978034749bfb1699e0ffc702a06a8941615981723'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
