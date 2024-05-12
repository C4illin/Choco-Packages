import-module au

$releases = 'https://github.com/SamDel/ChromeCast-Desktop-Audio-Streamer/releases'

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

    $url  = $download_page.links | Where-Object href -match '.zip$' | ForEach-Object href | Select-Object -first 1
    $version = (($url -split '/' | Select-Object -last 1) -replace '[^\d.]', '').Trim('.')

    @{
        URL   = $url
        Version = $version
    }
}

update -ChecksumFor all