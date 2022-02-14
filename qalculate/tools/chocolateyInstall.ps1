$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v4.0.0/qalculate-4.0.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v4.0.0/qalculate-4.0.0-x64.msi'
  checksum               = '571af8f36cafa31051274b5e250eef91858fe2421b4ac333cb934f829dcd0bde'
  checksum64             = '328797c676688db89ffe9e2ff815e373816500710a663a976aeb10602cdde903'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
