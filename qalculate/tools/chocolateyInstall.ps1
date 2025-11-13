# SPDX-FileCopyrightText: © 2018–2023, Emrik Östling <hi@emrik.org>
# SPDX-FileCopyrightText: © 2024–2025, Peter J. Mello <admin@petermello.net>
#
# SPDX-License-Identifier: MIT

$ErrorActionPreference  = 'Stop'

$chocoPkgNameVer        = "${packageName}-${Env:chocolateyPackageVersion}"
$chocoPkgInstallLogFile = (
  Join-Path -Path "${Env:TEMP}" -ChildPath "${chocoPkgNameVer}-MsiInstall.log"
)
$chocoPkgInstallLogDir  = (Split-Path "${chocoPkgInstallLogFile}" -Parent)

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
  Write-Information "Log directory is writable; proceeding with installation…"
} elseif (Set-PkgInstallLogDirWritable -Directory "${chocoPkgInstallLogDir}") {
  Write-Error "Unable to change logging directory permissions; aborting…"
  Exit 1
}

$packageArgs = @{
  packageName            = 'qalculate'
  fileType               = 'MSI'
  silentArgs             = "/qn /norestart /l*v ${chocoPkgInstallLogFile}"
  url64bit               = 'https://github.com/Qalculate/libqalculate/releases/download/v5.8.1/qalculate-5.8.1-x64.msi'
  validExitCodes         = @(0, 3010)
  checksum64             = 'd532315116fc3743bf947705c23000e977c44a0f5feeca9db6db27df2cb64ba4'
  checksumType64         = 'sha256'
  softwareName           = 'Qalculate!*'
}

Install-ChocolateyPackage @packageArgs
Install-BinFile -Name qalc -Path "${Env:ProgramFiles}\Qalculate\${Env:chocolateyPackageVersion}\qalc.exe"
