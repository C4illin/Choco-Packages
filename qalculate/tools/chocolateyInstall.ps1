$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.15.0/qalculate-3.15.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.15.0/qalculate-3.15.0-x64.msi'
  checksum               = '1248b3f5dea92f91cf7a813c136e67b2cb035717a9d40a9230b70131b2adef14'
  checksum64             = 'ecf6ca4228c5ceda5020aecb8a5acb8b4b0fa48934db0dde8903b8914ebd46d3'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
