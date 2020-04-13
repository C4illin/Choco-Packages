$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.9.0/qalculate-3.9.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.9.0/qalculate-3.9.0-x64.msi'
  checksum               = 'aaf78823fad41b171c1ea5100e97f8d38cd47e686139a66f47779b8e708b6b8c'
  checksum64             = 'b209c6d173ecc154ac6571c09439134a97bf9ae5c2f56e8910bbd1f7dbb94586'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
