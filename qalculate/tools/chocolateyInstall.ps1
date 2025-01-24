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
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.5.0/qalculate-5.5.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.5.0/qalculate-5.5.0-x64.msi'
  checksum               = 'dae4af7685dca8288b4f4aae4eab0e6b8a7a8b30accaf353fa1e879c31aee470'
  checksum64             = 'af443a18f3f5da96c4ba3a39d65179d305b7233a29f300681dabb2bd6220ec37'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = "/qn /norestart /l*v ${chocoPkgInstallLogFile}"
  validExitCodes         = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "${Env:ProgramFiles}\Qalculate\qalc.exe"
