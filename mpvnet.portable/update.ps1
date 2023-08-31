import-module au

$releases = 'https://github.com/mpvnet-player/mpv.net/releases'

function global:au_SearchReplace {
   @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"   = "`$1'$($Latest.URL)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum)'"
        }
    }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum = Get-RemoteChecksum $Latest.Url
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $urlcomp = $download_page.links | Where-Object href -match '/releases/tag/v' | ForEach-Object href | Select-Object -First 1
    $version = ($urlcomp -split '/' | Select-Object -last 1) -replace 'v' -replace '-stable'
    $url = ($urlcomp -replace '/tag/', '/download/') + '/mpv.net-v' + $version + '.zip'

    @{
        URL   = 'https://github.com' + $url
        Version = $version
    }
}

update -ChecksumFor all
