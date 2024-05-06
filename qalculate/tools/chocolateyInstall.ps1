$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.1.0/qalculate-5.1.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.1.0/qalculate-5.1.0-x64.msi'
  checksum               = '0340acf8966d113c6ae7fd07e34a0b37cb8d39d0a8cb916571d122343fd3f841'
  checksum64             = '6b06dd4534e3ae72d64f818d28e92ca2ecc4c83dc9999670fbd3a1b265eafcca'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
