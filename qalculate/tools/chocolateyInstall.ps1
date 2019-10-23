$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.5.0/qalculate-3.5.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.5.0/qalculate-3.5.0-x64.msi'
  checksum               = '146ef0d7d37d10f5de92f9bbc53afa35dc17e00dd50fe8b26566d6d2dad92a91'
  checksum64             = '49e19082aabd3f2a3a0a37cdb6c6ab86b4a59e925fe6da9df9ac1947433734e3'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
