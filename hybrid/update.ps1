import-module au

$releases = 'http://www.selur.de/downloads'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum64)'"
        }
    }
}

function global:au_BeforeUpdate {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.URL
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url  = 'http://www.selur.de' + ($download_page.links | Where-Object href -match '.exe$' | ForEach-Object href | Select-Object -First 1)
	$version = ($url -split '/' | Select-Object -last 1) -split "_" | Select-Object -first 1 -skip 1

    @{
        URL   = $url
        Version = $version
    }
}

update -ChecksumFor all