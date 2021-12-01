$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.22.0/qalculate-3.22.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.22.0/qalculate-3.22.0-x64.msi'
  checksum               = '6dfbf5a8f7ed9f548067cd0518cfda1fd3dfa4a62deacb14084181573ce9a66c'
  checksum64             = 'e70120cd9f4305fd22373dbe8b7b80b947b4513bf6c2a245326b80d7b07de33e'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
