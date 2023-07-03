$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.7.0/qalculate-4.7.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.7.0/qalculate-4.7.0-x64.msi'
  checksum               = 'c563bee28dd00ca7f0e7bacd2c50abc93fad0fead3224492f05e8f1a42bee3cb'
  checksum64             = '23bf816ac93b19af22bb4129c558626b59ef0c723843c6febca5022509a48c33'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
