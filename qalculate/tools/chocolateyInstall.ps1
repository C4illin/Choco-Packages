$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/qalculate-gtk/releases/download/v3.0.0/qalculate-3.0.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/qalculate-gtk/releases/download/v3.0.0/qalculate-3.0.0-x64.msi'
  checksum               = '32d685be8a757a8d84c67a5932e441744a6eab50e15eb372c447315a4904d7d1'
  checksum64             = '7937386f0bfea4ad5de49d97f1cf2248fe22cfcc149629ec3ff3be8f3f624fe6'
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
  Write-Warning "This will most likely cause a 1603/1638 failure when installing InkScape."
  Write-Warning "Please uninstall Qalculate! before installing this package."
}

Install-ChocolateyPackage @packageArgs
