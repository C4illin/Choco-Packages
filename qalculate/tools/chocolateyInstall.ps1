$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.5.0/qalculate-4.5.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.5.0/qalculate-4.5.0-x64.msi'
  checksum               = '99d563ab3a9d9e4367e34dd00965db94128d31d78a6418e26646d08acc795542'
  checksum64             = '3932f5ed554e47670f698498c70eec763f55982e83980572997ea7beeb2a2b1e'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
