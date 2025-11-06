# SPDX-FileCopyrightText: © 2018–2021, Emrik Östling <hi@emrik.org>
# SPDX-FileCopyrightText: © 2025, Peter J. Mello <admin@petermello.net>
#
# SPDX-License-Identifier: MIT

Import-Module -Name AU -Global

${releases} = 'https://github.com/Qalculate/libqalculate/releases'

function Global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$(${Global:Latest}.Url64)'"
      "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$(${Global:Latest}.Checksum64)'"
    }
  }
}

function Global:au_BeforeUpdate {
  ${Global:Latest}.Checksum64 = (
    Get-RemoteChecksum -Url ${Global:Latest}.Url64 -Algorithm 'sha256'
  )
}

function Global:au_GetLatest {
  ${downloadPage} = Invoke-WebRequest -Uri "${releases}" -UseBasicParsing
  ${url64}        = ${downloadPage}.links | Where-Object href -Match '.msi$' |
                      ForEach-Object href | Select-Object -First 1
  ${version}      = (${url64} -split '/' | Select-Object -Last 1) -split '-' |
                      Select-Object -First 1 -Skip 1

  return @{
    ChecksumType64 = 'sha256'
    Url64          = "${url64}"
    Version        = ${version}
  }
}

Update-Package -NoReadme -ChecksumFor none -Timeout 45
