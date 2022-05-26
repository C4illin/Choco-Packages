$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.2.0/qalculate-4.2.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.2.0/qalculate-4.2.0-x64.msi'
  checksum               = '87c8a97c97aa4969d17cd7b84f7f6e521b48e4b4a967c12c9b8f44ef2287362b'
  checksum64             = '8189ccb1e49a7e341772256691fb4503d22353a9d81b54bf43b47832d273de54'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
