$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.8.2/qalculate-2.8.2.msi'
  checksum               = 'b4f5484e4bf2c7e124c8d83d1674b61f2b14b30e9618de141b34506a6a30c641'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
