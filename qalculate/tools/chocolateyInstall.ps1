$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.11.0/qalculate-3.11.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.11.0/qalculate-3.11.0-x64.msi'
  checksum               = '9b83ee6e6becd749143e471a09a8cedbdf54574047b0d43837221ab4c1eb56d0'
  checksum64             = '27cebb2943c0c9618013fa797bd6d55951f101f3d6ade9650d81e15ada1fbfc5'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
