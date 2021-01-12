$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.16.1/qalculate-3.16.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.16.1/qalculate-3.16.1-x64.msi'
  checksum               = '071dedced511e5cc9698b00803dff503b000e7e4107d1f5e2d23be58c86bc4aa'
  checksum64             = 'dc29ade4cb4517c2454d73208cf4ed0adf2743d7d8c5b454b69e163705be871b'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
