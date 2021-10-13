$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.21.0/qalculate-3.21.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.21.0/qalculate-3.21.0-x64.msi'
  checksum               = 'dd5b6d1782b63806d0b08692e344877b45ea7b7491c19ae09ae8f1767b7dd002'
  checksum64             = '00e88da565c4dde46ef96d8c5b93682c9bf95f8d5bd189ebf967be7f0b1ca05e'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
