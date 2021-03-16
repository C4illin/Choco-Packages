import-module au

$releases = 'https://github.com/th-ch/youtube-music/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"        = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')"   = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum = Get-RemoteChecksum $Latest.URL
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $url  = $download_page.links | ? href -match '.exe$' | % href | select -first 1 -skip 1
	$version = ($url -split '/' | select -last 1 -skip 1).substring(1)

    @{
        URL   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor all