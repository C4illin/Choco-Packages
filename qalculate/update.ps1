import-module au

$releases = 'http://github.com/Qalculate/libqalculate/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum32)'"
        }
    }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url     = $download_page.links | ? href -match '.msi$' | % href | select -First 1
	$version = ($url -split '/' | select -last 1 -skip 1).substring(1)

    @{
        URL32   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor 32