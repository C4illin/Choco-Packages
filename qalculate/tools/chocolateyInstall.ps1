$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.6.1/qalculate-4.6.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.6.1/qalculate-4.6.1-x64.msi'
  checksum               = '27c01b1168cf70446c1d9e57c4e0d0597df4ed39436f0a40ae156bb16ee9577c'
  checksum64             = 'a5d40e0e5dffe6db8167188b52def53b572da20d91953e3fe0bb6a87ff20e6f7'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
