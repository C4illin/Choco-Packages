$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.20.1/qalculate-3.20.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.20.1/qalculate-3.20.1-x64.msi'
  checksum               = 'be1f6de335c2a17f4c1c702009e1dcbb4a5af20e5945f66978ddc7f914ca6cc5'
  checksum64             = '0a8c1f634f8de4ba83445b89d931b73824bdea570944ae87e8332a9bd0086b21'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
