$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.13.0/qalculate-3.13.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.13.0/qalculate-3.13.0-x64.msi'
  checksum               = '654db5dacc9901e6c3b8302e1c4e99a5a5a3140112e4d335a4b1262f022a80a9'
  checksum64             = 'd876808530db2f6b80e6952466501f65c647de0053a49f0677ac425a15db36ba'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
