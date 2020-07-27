$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.12.0/qalculate-3.12.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.12.0/qalculate-3.12.0-x64.msi'
  checksum               = 'b9ed2f9a53706663ef126725c927562ced91c8302e993f4b1e7b7f023a5d68a8'
  checksum64             = '2f9444d994676ab29d073540988fae74e14fa55e4a553c41294c78df6f53032f'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
