$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.3.0/qalculate-3.3.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.3.0/qalculate-3.3.0-x64.msi'
  checksum               = '4be2ae25dcf28ac57fcecf720c266763ea8f935a22eedc1010db2286e2bf9c58'
  checksum64             = 'a86e708b8b23beceaa1960192ca1607275bfb22a2787f03dc0d152db99410be0'
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
