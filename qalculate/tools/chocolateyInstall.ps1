$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.1.0/qalculate-3.1.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.1.0/qalculate-3.1.0-x64.msi'
  checksum               = '2e239a2b6b2d09937d46749b25ba801f5a237c1ae970448839022397de567276'
  checksum64             = 'dc6109e3ca4b25558bcdfe1de842f9565992d2e0249d073bf801ac4b436be1d1'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = '/qn'
  validExitCodes         = @(0)
}

# Credits to chocolatey-coreteampackages
[array]$key = Get-UninstallRegistrykey $packageArgs.softwareName
if ($key.Count -eq 1) {
  if ($key.DisplayVersion -eq '') {
    Write-Host "Software already installed"
    return
  }
  else {
    Uninstall-ChocolateyPackage -packageName $packageArgs.packageName `
      -fileType $packageArgs.fileType `
      -silentArgs "$($key.PSChildName) $($packageArgs.silentArgs)" `
      -validExitCodes $packageArgs.validExitCodes `
      -file ''
  }
}
elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "This will most likely cause a 1603/1638 failure when installing Qalculate!"
  Write-Warning "Please uninstall Qalculate! before installing this package."
}

Install-ChocolateyPackage @packageArgs
