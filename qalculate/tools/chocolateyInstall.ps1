$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.16.0/qalculate-3.16.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.16.0/qalculate-3.16.0-x64.msi'
  checksum               = 'da2129c888080805d65d1fb2186e09a32acbf57fb4c9065171f8ecb780586568'
  checksum64             = '2315e8a52f3f09c733696144a16189dcf26de2c487a5948961d6dd6dbd47cd7c'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
