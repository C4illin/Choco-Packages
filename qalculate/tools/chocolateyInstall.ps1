$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.3.0/qalculate-4.3.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.3.0/qalculate-4.3.0-x64.msi'
  checksum               = '789bea595ded87e165d2830acefbc37d662b884a1389d8df4df2e93bed68c528'
  checksum64             = '188755a065e5df5fedc39780653ec57e574a2d08aa3e4cca5625980bab73beb9'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
