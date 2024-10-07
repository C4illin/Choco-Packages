$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.3.0/qalculate-5.3.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.3.0/qalculate-5.3.0-x64.msi'
  checksum               = '714516c5146f402347243fa962bed1531d897933715d5f956c26dbacdf67b97a'
  checksum64             = '8534ab579e7b4066e0a264bb86dffa1cbbe9774224478fd5d786cbcbe389c6f2'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
