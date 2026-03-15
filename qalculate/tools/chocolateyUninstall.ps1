# SPDX-FileCopyrightText: © 2025–2026, Peter J. Mello <admin@petermello.net>
#
# SPDX-License-Identifier: MIT

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  PackageName    = 'qalculate'
  FileType       = 'MSI'
  SilentArgs     = '/qn /norestart'
  ValidExitCodes = @(0, 3010, 1605, 1614, 1641)
}

$softwareName    = 'Qalculate!*'
$local_key       = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
$machine_key     = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
$machine_key6432 = 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'

$key = Get-ItemProperty -Path @(
    ${machine_key6432}, ${machine_key}, ${local_key}
  ) -ErrorAction SilentlyContinue | Where-Object {
    $_.DisplayName -like "${softwareName}"
  }

if (${key}.Count -eq 1) {
  ${key} | ForEach-Object {
    $silentArgs = "$($_.PSChildName) ${silentArgs}"
  }
  Uninstall-ChocolateyPackage @packageArgs
  Uninstall-BinFile -Name qalc
} elseif (${key}.Count -eq 0) {
  Write-Warning "${packageName} has already been uninstalled by other means."
} elseif (${key}.Count -gt 1) {
  Write-Warning "${key}.Count matches found!" +
    "To prevent accidental data loss, no programs will be uninstalled." +
    "Please alert package maintainer the following keys were matched:"
  ${key} | ForEach-Object {
    Write-Warning "- $_.DisplayName"
  }
}
