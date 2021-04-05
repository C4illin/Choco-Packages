$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.18.0/qalculate-3.18.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.18.0/qalculate-3.18.0-x64.msi'
  checksum               = '351bee5c31cb112cddbec8cd2d1a7eeb46fecb3df040874b866f119d7cea176a'
  checksum64             = '0b72eae9ab0bf3f9a30172a62073ef191e3f185260dc616c2da02cb2349d7bf1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
