$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.3.0/qalculate-3.3.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.3.0/qalculate-3.3.0-x64.msi'
  checksum               = '4be2ae25dcf28ac57fcecf720c266763ea8f935a22eedc1010db2286e2bf9c58'
  checksum64             = 'a86e708b8b23beceaa1960192ca1607275bfb22a2787f03dc0d152db99410be0'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
