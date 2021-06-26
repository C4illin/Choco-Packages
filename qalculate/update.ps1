import-module au

$releases = 'https://github.com/Qalculate/qalculate-gtk/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*url64bit\s*=\s*)('.*')"   = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum32 = Get-RemoteChecksum $Latest.Url32
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.Url64
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64  = $download_page.links | ? href -match '.msi$' | % href | select -First 1
    $url32   = $url64 -replace '-x64.msi$', '-i386.msi'
	$version = ($url64 -split '/' | select -last 1)  -split '-' | select -first 1 -skip 1

    @{
        URL32   = $url32
        URL64   = $url64
        Version = $version
    }
}

update -ChecksumFor all