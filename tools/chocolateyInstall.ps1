$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.6.2/qalculate-2.6.2.msi'
  checksum               = '19F8BF99AE72EB6DE4B91A5625667C331941CB5374B7B82741B1D8BDC4E55313'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
