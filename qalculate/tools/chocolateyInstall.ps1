$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.8.1/qalculate-4.8.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.8.1/qalculate-4.8.1-x64.msi'
  checksum               = 'a7c7fd0d0ae49b0685130bff271aa579331d844ab26a11c09373bd09a158fd6f'
  checksum64             = '52bd90d861743cc70575d3f73150142902338b6386d65dd8ccf660bd7f752ea6'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
