$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.4.0/qalculate-5.4.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.4.0/qalculate-5.4.0-x64.msi'
  checksum               = 'fce8ec7f2b45eb9da0609d74bf454f24c9e9c10cd3a4a96bec56cc5c6ef3ca33'
  checksum64             = '7b29525652c8a7e50374c4181eee6921c745bce4f7c400f017daa4df118997bb'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn /norestart /l*v `"$($Env:TEMP)\$($packageName).$($Env:chocolateyPackageVersion).MsiInstall.log`"'
  validExitCodes         = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "C:\Program Files\Qalculate\qalc.exe"
