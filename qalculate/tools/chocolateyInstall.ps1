# SPDX-FileCopyrightText: © 2018–2023, Emrik Östling <hi@emrik.org>
# SPDX-FileCopyrightText: © 2024–2025, Peter J. Mello <admin@petermello.net>
#
# SPDX-License-Identifier: MIT

$ErrorActionPreference = 'Stop'

$chocoPkgInstallLogFile = (Join-Path -Path "${Env:TEMP}" `
  -ChildPath "${packageName}-${Env:chocolateyPackageVersion}-MsiInstall.log")
$chocoPkgInstallLogDir = (Split-Path "${chocoPkgInstallLogFile}" -Parent)

function Test-PkgInstallLogDirWritable {
  [CmdletBinding()]
  [OutputType([Int])]
  param([string]${Directory})
  Try {
    if ((Test-Path -Path "${Directory}") -and (
      Test-Path -Path "${Directory}" -PathType Container -Access Write
    )) {
      Return 0
    }
  }
  Catch {
    Return 1
  }
}


function Set-PkgInstallLogDirWritable {
  [CmdletBinding(supportsShouldProcess)]
  [OutputType([Int])]
  param([string]${Directory})
  Try {
    if (-not (Test-Path -Path "${Directory}")) {
      New-Item -Path "${Directory}" -ItemType Directory
    }
    $logDirAcl = Get-Acl -Path "${Directory}"
    $logDirRule = New-Object System.Security.AccessControl.FileSystemAccessRule(
      "Everyone", "Write", "Allow"
    )
    ${logDirAcl}.SetAccessRule(${logDirRule})
    Set-Acl -Path "${Directory}" -AclObject "${logDirAcl}"
    Return 0
  }
  Catch {
    Return 1
  }
}

if (Test-PkgInstallLogDirWritable -Directory "${chocoPkgInstallLogDir}") {
  Write-Information "Logging directory exists and is writable; proceeding with installation…"
} elseif (Set-PkgInstallLogDirWritable -Directory "${chocoPkgInstallLogDir}") {
  Write-Error "Unable to change logging directory permissions; aborting…"
  Exit 1
}

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.5.2/qalculate-5.5.2-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.5.2/qalculate-5.5.2-x64.msi'
  checksum               = 'cd9a1236964f98ad828cea5d732808f92882e080b23e8dd5fa70843ef9e627b7'
  checksum64             = '9d5927b1277571566e5658ee1f272ce2b5b7e8440488f541bc7146c8e2d8e706'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = "/qn /norestart /l*v ${chocoPkgInstallLogFile}"
  validExitCodes         = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "${Env:ProgramFiles}\Qalculate\qalc.exe"
