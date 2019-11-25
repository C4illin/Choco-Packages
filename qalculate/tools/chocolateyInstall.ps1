$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.6.0/qalculate-3.6.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.6.0/qalculate-3.6.0-x64.msi'
  checksum               = '178d7f8a486f28184a6c2143aad2c120c1d8fa38cab55c83d6eb5e7b9ba469dd'
  checksum64             = '778723e46320548e944d3df1e3021b0dc29072b343acdfc12a5c33063d1226f2'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
