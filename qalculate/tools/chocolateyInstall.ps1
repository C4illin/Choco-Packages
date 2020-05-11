$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.10.0/qalculate-3.10.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.10.0/qalculate-3.10.0-x64.msi'
  checksum               = 'acc4962262f565dc291750f8b56a98628f1dbd2b5667b82e1cc6b4aeecb3f882'
  checksum64             = 'c1d11da1c9316ccb9c44bd16814d1babdf125581f78179386fd2081e74657820'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
