$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.14.0/qalculate-3.14.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.14.0/qalculate-3.14.0-x64.msi'
  checksum               = 'cdf9274151758ab93403f55b28e7d7405135781939759f9dd46296698e060146'
  checksum64             = '4a598bc07d13f7e14ac4fa2bf38ef403b43c73a805b9c1af876510a6f223a9cd'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
