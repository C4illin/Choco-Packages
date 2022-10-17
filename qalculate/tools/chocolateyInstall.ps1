$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.4.0/qalculate-4.4.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.4.0/qalculate-4.4.0-x64.msi'
  checksum               = 'e109ffa0eb6cd052b3c089120581ccb5b820a902868772e28024661902ec8632'
  checksum64             = '856e4227855ce714dc1a55271aa5f3ed0ab3252b8a8b95b9243b9d4a8422e1e2'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
