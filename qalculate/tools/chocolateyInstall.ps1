$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.1.1/qalculate-4.1.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.1.1/qalculate-4.1.1-x64.msi'
  checksum               = '2865eb7bd1251f68e4d7e3c95dd303fef702ab7f7f73bc3c579055f843095a95'
  checksum64             = 'dc08821ae0e68abef08b2d5be8bcb2d54f9f499c63348c984db3366d1948b9ca'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
