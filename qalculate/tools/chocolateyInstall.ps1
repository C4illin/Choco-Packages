$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.8.0/qalculate-2.8.0.msi'
  checksum               = '89368ca0d8920c10a4e96d2667dc2638c3436c0d9bf5d6523f21fd4bcb93ab23'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
