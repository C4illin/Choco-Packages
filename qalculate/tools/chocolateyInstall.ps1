$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.2.0/qalculate-3.2.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.2.0/qalculate-3.2.0-x64.msi'
  checksum               = '53aa25e5919a8d8ef9c095696cbbbc2cbfe35e09a6edce8ae76be03be3c6acd8'
  checksum64             = '25b2a32e84ae5ee5f4e37cf22ee1810f691f5228e2fc6fa004c8006ea06deba4'
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
