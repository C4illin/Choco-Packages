$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.9.0/qalculate-4.9.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.9.0/qalculate-4.9.0-x64.msi'
  checksum               = 'c4efecf4c973f45bd33ee08b5d2878003620cfb2d6bee2b0371d088fba3c4b6f'
  checksum64             = '2cbe248f9e42d7d93438e048d4028af331133c530610838ea4f2e2de834cab31'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
