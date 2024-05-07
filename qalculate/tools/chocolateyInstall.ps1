$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.1.1/qalculate-5.1.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.1.1/qalculate-5.1.1-x64.msi'
  checksum               = 'e7d1bb5bcb517d8ae58665c1537d9f47d2d4161b1316f05b3db19515b14b6929'
  checksum64             = 'c77ad214f8fa0a912760893925277371d801ba419483d9bb2dc8dfcc16d17551'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
