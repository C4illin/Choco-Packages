$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.2.0/qalculate-5.2.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.2.0/qalculate-5.2.0-x64.msi'
  checksum               = '4a47a149f85fea2604f12b70f82b6f24852d3b7f83ee3385a1995edbc372d6a4'
  checksum64             = 'a7d0eba39fbb588189ca8997cb3c64f71c9e9550972e93419d9933e42ab58e97'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
