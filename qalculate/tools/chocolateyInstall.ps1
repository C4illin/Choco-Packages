$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v2.8.1/qalculate-2.8.1.msi'
  checksum               = '0d1d3942773c1786bbffe9bcddfc08bdee51c859c0f3c41b5791088013e9296d'
  checksumType           = 'sha256'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}
Install-ChocolateyPackage @packageArgs
