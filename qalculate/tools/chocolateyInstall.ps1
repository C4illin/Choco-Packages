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
  url                    = 'https://github.com/Qalculate/libqalculate/releases/download/v5.7.0/qalculate-5.7.0-i386.msi'
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.7.0/qalculate-5.7.0-x64.msi'
  checksum               = '697770e9806c11f41ffc174a608eb4974a09e8dee68a007160b8cd6419e30124'
  checksum64             = 'e7e8a1eef9cafc85dcd43febbc286186768f0e9eb8fd3cdd27e1c0bf7555e4a8'
  checksumType           = 'sha256'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
  silentArgs             = "/qn /norestart /l*v ${chocoPkgInstallLogFile}"
  validExitCodes         = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "${Env:ProgramFiles}\Qalculate\qalc.exe"
