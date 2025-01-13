$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.5.0/qalculate-5.5.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.5.0/qalculate-5.5.0-x64.msi'
  checksum               = 'dae4af7685dca8288b4f4aae4eab0e6b8a7a8b30accaf353fa1e879c31aee470'
  checksum64             = 'af443a18f3f5da96c4ba3a39d65179d305b7233a29f300681dabb2bd6220ec37'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn /norestart /l*v `"$($Env:TEMP)\$($packageName).$($Env:chocolateyPackageVersion).MsiInstall.log`"'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
