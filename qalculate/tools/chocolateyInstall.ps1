$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v3.2.0/qalculate-3.2.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v3.2.0/qalculate-3.2.0-x64.msi'
  checksum               = 'dca3be492adefafe9b5ec6fb4bb91859cfcfcf7fb610150a45b7acaeb2e4f782'
  checksum64             = '99a47deff6250426099960a3b05f710962e9255c01e4ea1eca8bb4c0a53e126d'
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
