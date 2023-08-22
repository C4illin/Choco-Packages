$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.8.0/qalculate-4.8.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.8.0/qalculate-4.8.0-x64.msi'
  checksum               = 'ec3dbf6c9a788681dab411503b63758e3aa0880ca1ec2dc97bc8e58b9e6b8c4e'
  checksum64             = 'c37464a54628e86c05cb2bd33a01ae927c0211f7c875903d76c707af5e045931'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
