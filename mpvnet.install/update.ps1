import-module au

$releases = 'https://github.com/mpvnet-player/mpv.net/releases'

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(?i)(^\s*url\s*=\s*)('.*')"      = "`$1'$($Latest.URL)'"
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
    $version = ($urlcomp -split '/' | Select-Object -last 1)
    $url = 'https://github.com' + ($urlcomp -replace '/tag/', '/download/') + '/mpv.net-' + $version + '-setup.exe'
    

    # test if the url exists
    $response = Invoke-WebRequest -Uri $url -UseBasicParsing -Method Head

    if ($response.StatusCode -ne 200) {
        $url = $null
    }

    if ($null -eq $url) {
        $url = "https://github.com/mpvnet-player/mpv.net/releases/download/5.4.9.0/mpv.net-5.4.9.0-setup.exe"
        $version = "5.4.9.0"
    }

    @{
        URL     = $url
        Version = $version -replace 'v' -replace '-stable'
    }
}

update -ChecksumFor all
