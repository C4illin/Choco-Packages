$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.19.0/qalculate-3.19.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.19.0/qalculate-3.19.0-x64.msi'
  checksum               = 'ac10653d747d31034580385ace013b15336a7261fae00b9b47133d899456edf2'
  checksum64             = 'f0ca2700bac3666cc1896035119554c3c25f0c579ad84f65b53769ab9b1714b5'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
