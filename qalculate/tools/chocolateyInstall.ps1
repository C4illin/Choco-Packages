$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.20.0/qalculate-3.20.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.20.0/qalculate-3.20.0-x64.msi'
  checksum               = '94e6dd8261981c2d4c5af603f008018f1d52b04330aad5c065d59f8509f5a1b0'
  checksum64             = '3c7d4658f67c9b7e010a8f58c69e90171c3a903801a690671947224b2edfc46a'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
