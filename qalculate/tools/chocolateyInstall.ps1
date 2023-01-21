$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.5.1/qalculate-4.5.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.5.1/qalculate-4.5.1-x64.msi'
  checksum               = '6eabb1b97269fbd491b51bb57f27c7faf35ea302cf9904442f7cb24611c55606'
  checksum64             = '4dc1f7e60f477daf9c4937a3583610e84c86a5a3713f0ebd3aa8df75e4964d23'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
