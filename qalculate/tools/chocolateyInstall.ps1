$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.1.0/qalculate-4.1.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.1.0/qalculate-4.1.0-x64.msi'
  checksum               = '3cb8be85534b21130c5400f40f7ac04f7944b7fd07a49293655033983790c4f7'
  checksum64             = 'dd767c455599688cf4c76290c066c46323889657aaa8dfc81835fb617bf8a965'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
