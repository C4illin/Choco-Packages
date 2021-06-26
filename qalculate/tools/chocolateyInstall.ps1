$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.19.0/qalculate-3.19.1-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.19.0/qalculate-3.19.1-x64.msi'
  checksum               = '6e282a5acb4732c0345e1d2eb25be341fdba64b12ed527f4a503dcb7925e8769'
  checksum64             = '1a9cfbbed9644b70991edf63cb9cc1b19464d4f88a5887c64aca3e1986d7a42b'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
