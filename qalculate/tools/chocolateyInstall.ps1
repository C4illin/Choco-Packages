$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.6.0/qalculate-4.6.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.6.0/qalculate-4.6.0-x64.msi'
  checksum               = '97aa7a99d6b45fd2b8182308b48dad02c08eb71165f1526445396b30ddaeaee5'
  checksum64             = '913b7d02cc56193fe66860e338b07992ae485788bea1b05df0d8eb7de205254b'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
