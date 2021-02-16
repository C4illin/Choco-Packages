$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.17.0/qalculate-3.17.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.17.0/qalculate-3.17.0-x64.msi'
  checksum               = '6d21a6b678762cb7a5fd61aa823e3dd65763599898696c055377856e82daec4b'
  checksum64             = 'ea7a8304009f2c3af2a194a1d651e48c8a254d0d80eb65aebbf213160070a0ea'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
