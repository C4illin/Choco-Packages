import-module au

$releases = 'http://www.selur.de/downloads'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url64\s*=\s*)('.*')"        = "`$1'$($Latest.URL64)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_BeforeUpdate {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.Url64
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url64  = 'http://www.selur.de' + ($download_page.links | ? href -match '.exe$' | % href | select -First 1)
	$version = ($url64 -split '/' | select -last 1) -split "_" | select -first 1 -skip 1

    @{
        URL64   = $url64
        Version = $version
    }
}

update -ChecksumFor all