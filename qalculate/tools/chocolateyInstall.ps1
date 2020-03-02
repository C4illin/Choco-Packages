$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.8.0/qalculate-3.8.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.8.0/qalculate-3.8.0-x64.msi'
  checksum               = 'bd1d6c429e919dd40886f19f73f8e6d4cb71c937a453cc71d5759636e53c768b'
  checksum64             = 'a9082d85f975aadd029ac4dbbee7976219b25a259bdad22dd48c8c12ed391735'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
