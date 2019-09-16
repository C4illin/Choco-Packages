$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.4.0/qalculate-3.4.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.4.0/qalculate-3.4.0-x64.msi'
  checksum               = '2c960b5b442c5125556e5570ce8565da68d6fbe2c20aad254c9e952e98caf92f'
  checksum64             = '025a1132ec716b800a221105ad94882c2b22d00b08d3456f33c0bd9cc3e6243f'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
